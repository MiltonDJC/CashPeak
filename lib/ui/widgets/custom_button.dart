import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.typeOfAction,
    required this.actionOfButton,
    required this.buttonBackgroundColor,
  });

  final String typeOfAction;
  final VoidCallback actionOfButton;
  final Color buttonBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonBackgroundColor,
        minimumSize: const Size(236, 80),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        foregroundColor: Colors.black,
        textStyle: const TextStyle(fontSize: 24),
      ),
      onPressed: actionOfButton,
      child: Text(typeOfAction),
    );
  }
}
