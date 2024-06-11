import 'package:expense_app/widgets/expanse_screen/expense_fetcher.dart';
import 'package:flutter/material.dart';

class ExpenseScreen extends StatelessWidget {
  static const name = '/expense_screen';
  const ExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: const Text('Expense Screen')),
      body: ExpenseFetcher(category: category),
    );
  }
}
