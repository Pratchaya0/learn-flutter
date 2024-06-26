// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:task_manage_system_for_learn_isar/main.dart';
import 'package:task_manage_system_for_learn_isar/collections/category.dart';
import 'package:task_manage_system_for_learn_isar/collections/routine.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    final dir = await getApplicationSupportDirectory();
    final isar =
        await Isar.open([RoutineSchema, CategorySchema], directory: dir.path);
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(
      isar: isar,
    ));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
