import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expense_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(this.expensese, {super.key});
  final List<Expense> expensese;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expensese.length,
      itemBuilder: (context, index) => ExpenseItem(expensese[index]),
    );
  }
}
