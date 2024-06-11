import 'package:expense_app/models/database_provider.dart';
import 'package:expense_app/widgets/expanse_screen/expense_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ALlExpanseList extends StatelessWidget {
  const ALlExpanseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DatabaseProvider>(builder: (_, db, __) {
      var list = db.expenses;
      return list.isNotEmpty ? ListView.builder(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics()
        ),
        itemCount: list.length,
        itemBuilder: (_, i) => ExpenseCard(exp: list[i]),
      ) : const Center(child: Text("No Entries Found"));
    });
  }
}
