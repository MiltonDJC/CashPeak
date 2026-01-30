import 'package:cashpeak/data/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseProvider extends ChangeNotifier {
  final List<Expense> _expenses = [
    Expense(date: DateTime(2022, 3, 14), name: 'tienda', expenseAmount: 100),
  ];

  List<Expense> get expenses => List.unmodifiable(_expenses);

  void addExpense(Expense newExpense) {
    _expenses.add(newExpense);
    notifyListeners();
  }
}
