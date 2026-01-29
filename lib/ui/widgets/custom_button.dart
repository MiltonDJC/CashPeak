import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
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
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color currentBackgroundColor = Colors.grey;

  // Todo: Refactor
  /* Manages the button background color state */
  void updateBackgroundColor() {
    setState(() {
      if (widget.buttonBackgroundColor != currentBackgroundColor) {
        currentBackgroundColor = widget.buttonBackgroundColor;
      } else if (widget.buttonBackgroundColor == currentBackgroundColor) {
        currentBackgroundColor = Colors.grey;
      }
    });
  }

  /* Update the button color, call the action button and recall
   the update button color function .*/
  void buttonExecuted() {
    updateBackgroundColor();
    widget.actionOfButton();
    Future.delayed(
      const Duration(milliseconds: 300),
      () => updateBackgroundColor(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: currentBackgroundColor,
        minimumSize: const Size(236, 80),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        foregroundColor: Colors.black,
        textStyle: const TextStyle(fontSize: 24),
      ),
      onPressed: buttonExecuted,
      child: Text(widget.typeOfAction),
    );
  }
}
