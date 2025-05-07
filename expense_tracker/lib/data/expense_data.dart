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
    category: Category.other,
  ),
  ExpenseModel(
    title: 'Internet',
    amount: 40.0,
    date: DateTime(2025, 5, 3),
    category: Category.work,
  ),
  ExpenseModel(
    title: 'Dining Out',
    amount: 30.0,
    date: DateTime(2025, 5, 4),
    category: Category.food,
  ),
  ExpenseModel(
    title: 'Fuel',
    amount: 60.0,
    date: DateTime(2025, 5, 5),
    category: Category.travel,
  ),
  ExpenseModel(
    title: 'Gym Membership',
    amount: 25.0,
    date: DateTime(2025, 5, 6),
    category: Category.leisure,
  ),
  ExpenseModel(
    title: 'Streaming Service',
    amount: 15.0,
    date: DateTime(2025, 5, 7),
    category: Category.leisure,
  ),
  ExpenseModel(
    title: 'Clothing',
    amount: 100.0,
    date: DateTime(2025, 5, 8),
    category: Category.leisure,
  ),
  ExpenseModel(
    title: 'Books',
    amount: 20.0,
    date: DateTime(2025, 5, 9),
    category: Category.work,
  ),
  ExpenseModel(
    title: 'Medical',
    amount: 200.0,
    date: DateTime(2025, 5, 10),
    category: Category.other,
  ),
];
