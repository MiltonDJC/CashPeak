class Income {
  Income({
    this.incomeIndex,
    required this.date,
    required this.name,
    required this.incomeAmount,
  });

  final int? incomeIndex;
  final DateTime date;
  final String name;
  final int incomeAmount;
}
