import 'package:cashpeak/data/models/income.dart';
import 'package:flutter/material.dart';

class IncomeProvider extends ChangeNotifier {
  int incomeIndex = 0;

  final List<Income> _incomes = [];

  List<Income> get incomes => List.unmodifiable(_incomes);

  void addIncome(Income incomeToBeAdded) {
    Income newIncome = Income(
      incomeIndex: incomeIndex,
      date: incomeToBeAdded.date,
      name: incomeToBeAdded.name,
      incomeAmount: incomeToBeAdded.incomeAmount,
    );

    _incomes.add(newIncome);
    incomeIndex++;
    notifyListeners();
  }

  void removeIncome(Income incomeToRemove, int index) {
    _incomes.removeWhere(
      (incomeToRemove) => incomeToRemove.incomeIndex == index,
    );
    notifyListeners();
  }

  int get totalIncomeAmount {
    return _incomes.fold<int>(
      0,
      (total, income) => total + income.incomeAmount,
    );
  }
}
