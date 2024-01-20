import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.deleteExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) deleteExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => Dismissible(
            background: Container(
              color: Theme.of(context).colorScheme.error.withOpacity(0.90),
              margin: EdgeInsets.symmetric(
                  horizontal: Theme.of(context).cardTheme.margin!.horizontal),
            ),
            onDismissed: (direction) {
              deleteExpense(expenses[index]);
            },
            key: ValueKey(expenses[index].id),
            child: ExpenseItem(expenses[index])));
  }
}
