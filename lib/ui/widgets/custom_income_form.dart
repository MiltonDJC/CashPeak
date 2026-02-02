import 'package:cash_peak/data/models/income.dart';
import 'package:cash_peak/providers/income_provider.dart';
import 'package:cash_peak/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomIncomeForm extends StatefulWidget {
  const CustomIncomeForm({super.key});

  @override
  State<CustomIncomeForm> createState() => _CustomIncomeFormState();
}

class _CustomIncomeFormState extends State<CustomIncomeForm> {
  final incomeAmountController = TextEditingController();
  final incomeNameController = TextEditingController();

  @override
  void dispose() {
    incomeAmountController.dispose();
    incomeNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final incomeProvider = context.watch<IncomeProvider>();

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
                            controller: incomeAmountController,
                            decoration: const InputDecoration(
                              labelText: 'Ingreso',
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
                            controller: incomeNameController,
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
              buttonBackgroundColor: Colors.green,
              actionOfButton: () {
                if (incomeNameController.text.isEmpty ||
                    incomeAmountController.text.isEmpty) {
                  return;
                } else {
                  incomeProvider.addIncome(
                    Income(
                      date: DateTime.now(),
                      name: incomeNameController.text,
                      incomeAmount: int.parse(incomeAmountController.text),
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
