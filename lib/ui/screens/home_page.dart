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
          CustomButton(typeOfAction: 'Registrar Gasto', actionOfButton: () {}),
          const SizedBox(height: 32),
          CustomButton(
            typeOfAction: 'Registrar Ingreso',
            actionOfButton: () {},
          ),
          const SizedBox(height: 32),
          CustomButton(typeOfAction: 'Registros', actionOfButton: () {}),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
