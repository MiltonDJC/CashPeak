import 'package:cashpeak/data/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseProvider extends ChangeNotifier {
  int expenseIndex = 0;

  final List<Expense> _expenses = [];

  List<Expense> get expenses => List.unmodifiable(_expenses);

  void addexpense(Expense expenseToBeAdded) {
    Expense newExpense = Expense(
      expenseIndex: expenseIndex,
      date: expenseToBeAdded.date,
      name: expenseToBeAdded.name,
      expenseAmount: expenseToBeAdded.expenseAmount,
    );
    _expenses.add(newExpense);
    expenseIndex++;
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
