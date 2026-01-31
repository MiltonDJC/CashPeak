import 'package:cashpeak/data/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseProvider extends ChangeNotifier {
  final List<Expense> _expenses = [
    Expense(date: DateTime(2022, 3, 14), name: 'tienda', expenseAmount: 100),
    Expense(
      date: DateTime(2022, 3, 14),
      name: 'super mercado',
      expenseAmount: 100,
    ),
    Expense(date: DateTime(2022, 3, 14), name: 'mencanico', expenseAmount: 100),
  ];

  List<Expense> get expenses => List.unmodifiable(_expenses);

  void addExpense(Expense newExpense) {
    _expenses.add(newExpense);
    notifyListeners();
  }

  void removeExpense(Expense expenseToRemove, String name) {
    _expenses.removeWhere((expenseToRemove) => expenseToRemove.name == name);
    notifyListeners();
  }

  int get totalExpenseAmount {
    return _expenses.fold<int>(
      0,
      (total, expense) => total + expense.expenseAmount,
    );
  }
}
