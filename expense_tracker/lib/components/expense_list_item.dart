import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense_model.dart';

final categoryIconMap = {
  Category.food: Icons.fastfood,
  Category.travel: Icons.airplanemode_active,
  Category.leisure: Icons.local_activity,
  Category.work: Icons.work,
  Category.other: Icons.help_outline,
};

class ExpenseListItem extends StatelessWidget {
  final ExpenseModel expense;

  ExpenseListItem(this.expense, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '€${expense.amount.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      categoryIconMap[expense.category],
                      size: 20,
                      color:
                          Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer, // Adjusted for better visibility in dark mode
                    ),
                    const SizedBox(width: 8),
                    Text(
                      expense.formattedDate,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
