import 'package:hive_ce/hive_ce.dart';

part 'income.g.dart';

@HiveType(typeId: 0)
class Income extends HiveObject {
  Income({
    this.incomeIndex,
    required this.date,
    required this.name,
    required this.incomeAmount,
  });

  @HiveField(0)
  final int? incomeIndex;

  @HiveField(1)
  final DateTime date;

  @HiveField(2)
  final String name;

  @HiveField(3)
  final int incomeAmount;
}
