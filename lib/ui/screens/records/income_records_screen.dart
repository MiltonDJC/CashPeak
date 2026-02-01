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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          'Fecha: ${incomeProvider.incomes[index].date.day}/${incomeProvider.incomes[index].date.month}/${incomeProvider.incomes[index].date.year}\nNombre: ${incomeProvider.incomes[index].name.toUpperCase()}\nMonto: \$${incomeProvider.incomes[index].incomeAmount}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          incomeProvider.removeIncome(
                            incomeProvider.incomes[index],
                            incomeProvider.incomes[index].incomeIndex!,
                          );
                        },
                        icon: const Icon(
                          Icons.delete_forever,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Total de ingresos:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$${incomeProvider.totalIncomeAmount}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
