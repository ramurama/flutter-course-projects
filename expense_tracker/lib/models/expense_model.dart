import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

enum Category { food, travel, leisure, work, other }

class ExpenseModel {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  ExpenseModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = const Uuid().v4();

  get formattedDate {
    return DateFormat('dd.MM.yyyy').format(date);
  }
}

class ExpenseBucket {
  final Category category;
  final List<ExpenseModel> expenses;

  ExpenseBucket.forCategory(List<ExpenseModel> allExpenses, this.category)
    : expenses =
          allExpenses.where((expense) => expense.category == category).toList();

  ExpenseBucket({required this.category, required this.expenses});

  double get totalSpending {
    double total = 0;
    for (var expense in expenses) {
      total += expense.amount;
    }
    return total;
  }
}
