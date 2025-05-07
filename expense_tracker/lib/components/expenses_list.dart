import 'package:expense_tracker/components/expense_list_item.dart';
import 'package:expense_tracker/models/expense_model.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<ExpenseModel> expenses;

  const ExpensesList({super.key, required this.expenses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpenseListItem(expenses[index]),
    );
  }
}
