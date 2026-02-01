class Expense {
  Expense({
    required this.expenseIndex,
    required this.date,
    required this.name,
    required this.expenseAmount,
  });

  final int expenseIndex;
  final DateTime date;
  final String name;
  final int expenseAmount;
}
