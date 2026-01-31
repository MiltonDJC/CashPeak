import 'package:cashpeak/ui/screens/records/expenses_records_screen.dart';
import 'package:cashpeak/ui/screens/records/income_records_screen.dart';
import 'package:cashpeak/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class RecordsScreen extends StatelessWidget {
  const RecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 224,
              height: 80,
              child: CustomButton(
                actionOfButton: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const IncomeRecordsScreen(),
                  ),
                ),
                typeOfAction: 'Registros de ingresos',
                buttonBackgroundColor: Colors.green,
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: 224,
              height: 80,
              child: CustomButton(
                actionOfButton: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ExpensesRecordsScreen(),
                  ),
                ),
                typeOfAction: 'Registros de gastos',
                buttonBackgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
