import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:task_manage_system_for_learn_isar/collections/category.dart';

class CreateRoutine extends StatefulWidget {
  final Isar isar;
  const CreateRoutine({super.key, required this.isar});

  @override
  State<CreateRoutine> createState() => _CreateRoutineState();
}

class _CreateRoutineState extends State<CreateRoutine> {
  List<Category>? categories;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
