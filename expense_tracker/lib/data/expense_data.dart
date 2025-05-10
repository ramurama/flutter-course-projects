import '../models/expense_model.dart';

final List<ExpenseModel> dummyExpenses = [
  ExpenseModel(
    title: 'Groceries',
    amount: 50.0,
    date: DateTime(2025, 5, 1),
    category: Category.food,
  ),
  ExpenseModel(
    title: 'Electricity Bill',
    amount: 75.0,
    date: DateTime(2025, 5, 2),
    category: Category.work,
  ),
];
