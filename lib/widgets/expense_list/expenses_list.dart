import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expense_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(this.expensese, this.onRemoveExpense, {super.key});
  final List<Expense> expensese;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expensese.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(expensese[index]),
        onDismissed: (direction) => {onRemoveExpense(expensese[index])},
        child: ExpenseItem(
          expensese[index],
        ),
      ),
    );
  }
}
