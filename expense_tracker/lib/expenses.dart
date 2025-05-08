import 'package:expense_tracker/components/expenses_list.dart';
import 'package:expense_tracker/data/expense_data.dart';
import 'package:expense_tracker/models/expense_model.dart';
import 'package:expense_tracker/screens/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  void onAddExpense(ExpenseModel expense) {
    // Handle the new expense
    setState(() {
      dummyExpenses.add(expense);
    });
  }

  void _onAddExpensePressed() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: onAddExpense),
      isScrollControlled: true,
    );
  }

  void _onDeleteExpense(ExpenseModel expense) {
    final expenseIndex = dummyExpenses.indexOf(expense);

    setState(() {
      dummyExpenses.remove(expense);
    });

    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Expense deleted!'),
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              dummyExpenses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Flexible(
        child: Text(
          'Oh honey! No expenses found. Start adding some! ',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 143, 143, 143),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );

    if (dummyExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expenses: dummyExpenses,
        onDeleteExpense: _onDeleteExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _onAddExpensePressed,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Chart'), Expanded(child: mainContent)],
      ),
    );
  }
}
