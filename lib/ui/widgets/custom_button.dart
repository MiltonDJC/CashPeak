import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.typeOfAction,
    required this.actionOfButton,
  });

  final String typeOfAction;
  final VoidCallback actionOfButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: actionOfButton, child: Text(typeOfAction));
  }
}
