import 'package:expense_app/widgets/all_expanses_screen/all_expenses_fetcher.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatefulWidget {
  static const name = '/all_expenses';
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Expenses')),
      body: const AllExpensesFetcher(),
    );
  }
}
