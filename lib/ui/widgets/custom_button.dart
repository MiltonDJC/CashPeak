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
        minimumSize: const Size(200, 56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: actionOfButton,
      child: Text(typeOfAction),
    );
  }
}
