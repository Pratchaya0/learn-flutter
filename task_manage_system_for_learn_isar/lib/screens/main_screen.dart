import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:task_manage_system_for_learn_isar/collections/routine.dart';

class MainScreen extends StatefulWidget {
  final Isar isar;
  const MainScreen({super.key, required this.isar});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Routine>? routines;
  final TextEditingController _searchController = TextEditingController();
  bool search = false;
  String feedback = "";
  MaterialColor feedbackColor = Colors.blue;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Routine",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
