import 'package:cashpeak/data/models/expense.dart';
import 'package:cashpeak/providers/expense_provider.dart';
import 'package:cashpeak/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomExpenseForm extends StatefulWidget {
  const CustomExpenseForm({super.key});

  @override
  State<CustomExpenseForm> createState() => _CustomExpenseFormState();
}

class _CustomExpenseFormState extends State<CustomExpenseForm> {
  final expenseAmountController = TextEditingController();
  final expenseNameController = TextEditingController();

  @override
  void dispose() {
    expenseAmountController.dispose();
    expenseNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final expenseProvider = context.watch<ExpenseProvider>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: SizedBox(
                          width: 300,
                          child: TextFormField(
                            controller: expenseAmountController,
                            decoration: const InputDecoration(
                              labelText: 'Gasto',
                              prefixText: '\$',
                            ),
                            maxLength: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: SizedBox(
                          width: 300,
                          child: TextFormField(
                            controller: expenseNameController,
                            decoration: const InputDecoration(
                              labelText: 'Nombre',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: SizedBox(
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Fecha'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              typeOfAction: 'Añadir',
              buttonBackgroundColor: Colors.red,
              actionOfButton: () {
                if (expenseNameController.text.isEmpty ||
                    expenseAmountController.text.isEmpty) {
                  return;
                } else {
                  expenseProvider.addExpense(
                    Expense(
                      date: DateTime.now(),
                      name: expenseNameController.text,
                      expenseAmount: int.parse(expenseAmountController.text),
                    ),
                  );
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
