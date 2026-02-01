import 'package:cashpeak/data/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseProvider extends ChangeNotifier {
  final List<Expense> _expenses = [
    Expense(
      expenseIndex: 0,
      date: DateTime(2022, 3, 14),
      name: 'tienda',
      expenseAmount: 100,
    ),
    Expense(
      expenseIndex: 1,
      date: DateTime(2022, 3, 14),
      name: 'super mercado',
      expenseAmount: 100,
    ),
    Expense(
      expenseIndex: 2,
      date: DateTime(2022, 3, 14),
      name: 'mencanico',
      expenseAmount: 100,
    ),
  ];

  List<Expense> get expenses => List.unmodifiable(_expenses);

  void addExpense(Expense newExpense) {
    _expenses.add(newExpense);
    notifyListeners();
  }

  void removeExpense(Expense expenseToRemove, int index) {
    _expenses.removeWhere(
      (expenseToRemove) => expenseToRemove.expenseIndex == index,
    );
    notifyListeners();
  }

  int get totalExpenseAmount {
    return _expenses.fold<int>(
      0,
      (total, expense) => total + expense.expenseAmount,
    );
  }
}
