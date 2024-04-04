import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Color backgraundColor;
  final Color textColor;
  final VoidCallback? onPressed;
  const CustomElevatedButtonWidget({
    super.key,
    required this.text,
    required this.backgraundColor,
    required this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 46),
        backgroundColor: backgraundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: textColor),
      ),
    );
  }
}
