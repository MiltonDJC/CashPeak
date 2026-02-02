import 'package:cashpeak/data/models/expense.dart';
import 'package:cashpeak/data/models/income.dart';
import 'package:cashpeak/providers/expense_provider.dart';
import 'package:cashpeak/providers/income_provider.dart';
import 'package:cashpeak/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(IncomeAdapter());
  Hive.registerAdapter(ExpenseAdapter());

  await Hive.openBox<Income>('incomes');
  await Hive.openBox<Expense>('expenses');

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => IncomeProvider()),
        ChangeNotifierProvider(create: (_) => ExpenseProvider()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cash Peak',
            style: TextStyle(fontSize: 48, color: Colors.black),
          ),
          toolbarHeight: 300,
          centerTitle: true,
        ),
        body: const HomeScreen(),
      ),
      title: 'Cash Peak',
      debugShowCheckedModeBanner: false,
    );
  }
}
