class Expense {
  Expense({
    required this.date,
    required this.name,
    required this.expenseAmount,
  });

  final DateTime date;
  final String name;
  final int expenseAmount;
}
