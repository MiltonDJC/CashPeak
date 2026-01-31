import 'package:cashpeak/providers/income_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IncomeRecordsScreen extends StatelessWidget {
  const IncomeRecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final incomeProvider = context.watch<IncomeProvider>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Ingresos registrados'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: incomeProvider.incomes.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            subtitle: Card(
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 80,
                children: [
                  const SizedBox(height: 100, width: 50),
                  Text(
                    'Fecha: ${incomeProvider.incomes[index].date.day}/${incomeProvider.incomes[index].date.month}/${incomeProvider.incomes[index].date.year}\nNombre: ${incomeProvider.incomes[index].name.toUpperCase()}\nMonto: \$${incomeProvider.incomes[index].incomeAmount}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete_forever, color: Colors.red),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
