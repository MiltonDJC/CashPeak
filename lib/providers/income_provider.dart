import 'package:cashpeak/data/models/income.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce/hive_ce.dart';

class IncomeProvider extends ChangeNotifier {
  final Box<Income> _incomeBox = Hive.box<Income>('incomes');

  List<Income> get incomes => _incomeBox.values.toList();

  void addIncome(Income income) {
    _incomeBox.add(income);
    notifyListeners();
  }

  void removeIncome(Income income) {
    _incomeBox.delete(income.key);
    notifyListeners();
  }

  int get totalIncomeAmount {
    return incomes.fold<int>(0, (total, income) => total + income.incomeAmount);
  }
}
