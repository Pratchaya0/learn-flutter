import 'package:isar/isar.dart';
import 'package:task_manage_system_for_learn_isar/collections/category.dart';
part 'routine.g.dart';

@collection
class Routine {
  Id id = Isar.autoIncrement;

  late String title;

  late String startTime;

  @Index(caseSensitive: false)
  late String day;

  @Index(composite: [CompositeIndex('title')])
  final category = IsarLink<Category>();
}
