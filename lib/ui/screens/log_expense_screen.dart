import 'package:cash_peak/ui/widgets/custom_expense_form.dart';
import 'package:flutter/material.dart';

class LogExpenseScreen extends StatefulWidget {
  const LogExpenseScreen({super.key});

  @override
  State<LogExpenseScreen> createState() => LogExpenseScreenState();
}

class LogExpenseScreenState extends State<LogExpenseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Registrar gasto'),
        centerTitle: true,
      ),
      body: const CustomExpenseForm(),
    );
  }
}
