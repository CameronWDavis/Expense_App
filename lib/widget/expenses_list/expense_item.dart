import 'package:flutter/material.dart';
import 'package:expensetracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;
  const ExpenseItem(
    this.expense, {
    super.key,
  }); // Constructor to accept an Expense object

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        // Add padding around the content
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          // Use Column to arrange title and amount vertically
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  '\$${expense.amount.toStringAsFixed(2)}', // Format amount as currency
                ), // Display amount with 2 decimal places
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.formattedDate),
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
