import 'package:expense_tracker/models/expense_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:expense_tracker/components/alert_dialog_component.dart';

final dateFormatter = DateFormat('dd/MM/yyyy');

class NewExpense extends StatefulWidget {
  const NewExpense({super.key, required this.onAddExpense});

  final Function(ExpenseModel expense) onAddExpense;

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  final _dateController = TextEditingController();
  Category? _selectedCategory;

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void _onDatePickerPressed() async {
    final now = DateTime.now();

    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(now.year - 1, now.month, now.day),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      // Format the date and set it to the controller
      final formattedDate = dateFormatter.format(pickedDate);
      _dateController.text = formattedDate;
    }
  }

  void _onCategorySelected(Category? category) {
    // Handle category selection
    setState(() {
      _selectedCategory = category;
    });
  }

  void _onSaveExpense() {
    final title = _titleController.text.trim();
    final amountText = _amountController.text.trim();
    final dateText = _dateController.text.trim();

    if (title.isEmpty) {
      AlertDialogComponent.showAlertDialog(
        context: context,
        title: 'Invalid Input',
        content: 'Title cannot be empty.',
      );
      return;
    }

    final amount = double.tryParse(amountText);
    if (amount == null || amount <= 0) {
      AlertDialogComponent.showAlertDialog(
        context: context,
        title: 'Invalid Input',
        content: 'Please enter a valid amount.',
      );
      return;
    }

    if (dateText.isEmpty) {
      AlertDialogComponent.showAlertDialog(
        context: context,
        title: 'Invalid Input',
        content: 'Please select a date.',
      );
      return;
    }

    if (_selectedCategory == null) {
      AlertDialogComponent.showAlertDialog(
        context: context,
        title: 'Invalid Input',
        content: 'Please select a category.',
      );
      return;
    }

    widget.onAddExpense(
      ExpenseModel(
        title: title,
        amount: amount,
        date: dateFormatter.parse(dateText),
        category: _selectedCategory!,
      ),
    );

    // Save the expense
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 55, 16, 16),
      child: Column(
        children: [
          Text(
            'Add New Expense',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            maxLength: 50,
            controller: _titleController,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextField(
                  controller: _dateController,
                  decoration: InputDecoration(
                    labelText: 'Date',
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                  readOnly: true,
                  onTap: _onDatePickerPressed,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: DropdownButton<Category>(
                  isExpanded: true,
                  items:
                      Category.values
                          .map(
                            (item) => DropdownMenuItem<Category>(
                              value: item,
                              child: Text(
                                item.name.toUpperCase(),
                                style: TextStyle(
                                  color:
                                      Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer, // Ensure visibility
                                ),
                              ),
                            ),
                          )
                          .toList(),
                  onChanged: _onCategorySelected,
                  value: _selectedCategory,
                  hint: Text(
                    'Select Category',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                      // Ensure visibility
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('Cancel'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: _onSaveExpense,
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('Save Expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
