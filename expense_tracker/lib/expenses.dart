import 'package:expense_tracker/components/expenses_list.dart';
import 'package:expense_tracker/data/expense_data.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Add your action here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Text('Chart'),
          Expanded(child: ExpensesList(expenses: dummyExpenses)),
        ],
      ),
    );
  }
}
