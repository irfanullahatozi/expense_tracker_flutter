import 'package:expense_tracker/widgets/expense_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _Expenses();
  }
}

class _Expenses extends State<Expenses> {
  final List<Expense> _registerExpenses = [
    Expense(
        title: 'Flutter course',
        amount: 20.0,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 16.0,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'Mango',
        amount: 5.5,
        date: DateTime.now(),
        category: Category.food),
  ];

  void openAddExpenseModal() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expense Tracker'), actions: [
        IconButton(
          onPressed: openAddExpenseModal,
          icon: const Icon(Icons.add),
        ),
      ]),
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(
            child: ExpensesList(_registerExpenses),
          ),
        ],
      ),
    );
  }
}
