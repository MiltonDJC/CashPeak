import 'package:cashpeak/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  @override
  Widget build(BuildContext context) {
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
              actionOfButton: () {},
            ),
          ],
        ),
      ],
    );
  }
}
