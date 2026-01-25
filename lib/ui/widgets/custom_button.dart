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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
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
