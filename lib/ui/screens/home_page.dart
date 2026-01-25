import 'package:cashpeak/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            typeOfAction: 'Registrar Ingreso',
            buttonBackgroundColor: Colors.green,
            actionOfButton: () {},
          ),
          const SizedBox(height: 32),
          CustomButton(
            typeOfAction: 'Registrar Gasto',
            buttonBackgroundColor: Colors.red,
            actionOfButton: () {},
          ),
          const SizedBox(height: 32),
          CustomButton(
            typeOfAction: 'Registros',
            buttonBackgroundColor: Colors.grey,
            actionOfButton: () {},
          ),
          const SizedBox(height: 200),
        ],
      ),
    );
  }
}
