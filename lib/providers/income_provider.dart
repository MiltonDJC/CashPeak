import 'package:cashpeak/data/models/income.dart';
import 'package:flutter/material.dart';

class IncomeProvider extends ChangeNotifier {
  final List<Income> _incomes = [
    Income(date: DateTime(2022, 3, 14), name: 'tienda', incomeAmount: 100),
  ];

  List<Income> get incomes => List.unmodifiable(_incomes);

  void addIncome(Income newIncome) {
    _incomes.add(newIncome);
    notifyListeners();
  }
}
