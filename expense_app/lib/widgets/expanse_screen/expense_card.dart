import 'package:expense_app/constants/icons.dart';
import 'package:expense_app/models/expense.dart';
import 'package:expense_app/widgets/expanse_screen/confirm_box.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseCard extends StatelessWidget {
  final Expense exp;
  const ExpenseCard({super.key, required this.exp});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(exp.id),
      confirmDismiss: (_) async {
        showDialog(
          context: context,
          builder: (_) => ConfirmBox(exp: exp),
        );
      },
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icons[exp.category]),
        ),
        title: Text(exp.title),
        subtitle: Text(DateFormat('MMMM dd, yyyy').format(exp.date)),
        trailing: Text(NumberFormat.currency(locale: 'th_TH', symbol: '฿')
            .format(exp.amount)),
      ),
    );
  }
}
