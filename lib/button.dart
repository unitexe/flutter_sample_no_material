import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  const Button({required this.onPressed, required this.buttonText, super.key});

  final VoidCallback onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: const Color(0xFFFFFF00)),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        padding: const EdgeInsets.all(8),
        child: Text(buttonText, style: const TextStyle(color: Color(0xFFFFFF00))),
      )
    );
  }
}