import 'package:cashpeak/data/models/income.dart';
import 'package:flutter/material.dart';

class IncomeProvider extends ChangeNotifier {
  final List<Income> _incomes = [
    Income(
      incomeIndex: 0,
      date: DateTime(2022, 3, 14),
      name: 'tienda',
      incomeAmount: 100,
    ),
    Income(
      incomeIndex: 1,
      date: DateTime(2022, 3, 14),
      name: 'super mercado',
      incomeAmount: 100,
    ),
    Income(
      incomeIndex: 2,
      date: DateTime(2022, 3, 14),
      name: 'mencanico',
      incomeAmount: 100,
    ),
  ];

  List<Income> get incomes => List.unmodifiable(_incomes);

  void addIncome(Income newIncome) {
    _incomes.add(newIncome);
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
