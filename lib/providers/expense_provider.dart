import 'package:cashpeak/data/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce/hive_ce.dart';

class ExpenseProvider extends ChangeNotifier {
  final Box<Expense> _expenseBox = Hive.box<Expense>('expenses');

  List<Expense> get expenses => _expenseBox.values.toList();

  void addExpense(Expense expense) {
    _expenseBox.add(expense);
    notifyListeners();
  }

  void removeExpense(Expense expense) {
    _expenseBox.delete(expense.key);
    notifyListeners();
  }

  int get totalExpenseAmount {
    return expenses.fold<int>(
      0,
      (total, expense) => total + expense.expenseAmount,
    );
  }
}
