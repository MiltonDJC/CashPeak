import 'package:cash_peak/ui/screens/log_expense_screen.dart';
import 'package:cash_peak/ui/screens/log_income_screen.dart';
import 'package:cash_peak/ui/screens/records_screen.dart';
import 'package:cash_peak/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            typeOfAction: 'Registrar Ingreso',
            buttonBackgroundColor: Colors.green,
            actionOfButton: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const LogIncomeScreen()),
              );
            },
          ),
          const SizedBox(height: 32),
          CustomButton(
            typeOfAction: 'Registrar Gasto',
            buttonBackgroundColor: Colors.red,
            actionOfButton: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const LogExpenseScreen()),
              );
            },
          ),
          const SizedBox(height: 32),
          CustomButton(
            typeOfAction: 'Registros',
            buttonBackgroundColor: Colors.blue,
            actionOfButton: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RecordsScreen()),
              );
            },
          ),
          const SizedBox(height: 200),
        ],
      ),
    );
  }
}
