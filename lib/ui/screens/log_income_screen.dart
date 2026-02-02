import 'package:cash_peak/ui/widgets/custom_income_form.dart';
import 'package:flutter/material.dart';

class LogIncomeScreen extends StatefulWidget {
  const LogIncomeScreen({super.key});

  @override
  State<LogIncomeScreen> createState() => _LogIncomeScreenState();
}

class _LogIncomeScreenState extends State<LogIncomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Registrar ingreso'),
        centerTitle: true,
      ),
      body: const CustomIncomeForm(),
    );
  }
}
