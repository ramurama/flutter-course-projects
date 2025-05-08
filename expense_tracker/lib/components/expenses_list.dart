import 'package:expense_tracker/components/expense_list_item.dart';
import 'package:expense_tracker/models/expense_model.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<ExpenseModel> expenses;

  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onDeleteExpense,
  });

  final Function(ExpenseModel expense) onDeleteExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(expenses[index].id), // Use a unique key for each item
        onDismissed: (direction) {
          // Wait for the Dismissible animation to complete before removing the item
          Future.delayed(Duration.zero, () => onDeleteExpense(expenses[index]));
        },
        child: ExpenseListItem(expenses[index]),
      ),
    );
  }
}
