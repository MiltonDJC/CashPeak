import 'package:hive_ce/hive_ce.dart';

part 'expense.g.dart';

@HiveType(typeId: 1)
class Expense extends HiveObject {
  Expense({
    this.expenseIndex,
    required this.date,
    required this.name,
    required this.expenseAmount,
  });

  @HiveField(0)
  final int? expenseIndex;

  @HiveField(1)
  final DateTime date;

  @HiveField(2)
  final String name;

  @HiveField(3)
  final int expenseAmount;
}
