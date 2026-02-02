import 'package:cash_peak/providers/expense_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpensesRecordsScreen extends StatelessWidget {
  const ExpensesRecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final expenseProvider = context.watch<ExpenseProvider>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Gastos registrados'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: expenseProvider.expenses.length,
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
                          'Fecha: ${expenseProvider.expenses[index].date.day}/${expenseProvider.expenses[index].date.month}/${expenseProvider.expenses[index].date.year}\nNombre: ${expenseProvider.expenses[index].name.toUpperCase()}\nMonto: \$${expenseProvider.expenses[index].expenseAmount}',
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
                          expenseProvider.removeExpense(
                            expenseProvider.expenses[index],
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
              'Total de gastos:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              expenseProvider.totalExpenseAmount != 0
                  ? '-\$${expenseProvider.totalExpenseAmount}'
                  : '\$0',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
