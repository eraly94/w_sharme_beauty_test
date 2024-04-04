import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/theme/app_colors.dart';

class CustomBorderContainer extends StatefulWidget {
  final String text;
  const CustomBorderContainer({super.key, required this.text});

  @override
  State<CustomBorderContainer> createState() => _CustomBorderContainerState();
}

class _CustomBorderContainerState extends State<CustomBorderContainer> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
      },
      child: SizedBox(
          width: double.infinity,
          height: 44,
          child: DecoratedBox(
            decoration: BoxDecoration(
                border: Border.all(
                    color: isTapped ? AppColors.white : AppColors.purple),
                borderRadius: BorderRadius.circular(12),
                color: isTapped ? AppColors.purple : AppColors.white),
            child: Center(
              child: Text(
                widget.text,
                style: TextStyle(
                    fontSize: 15,
                    color: isTapped ? AppColors.white : AppColors.purple),
              ),
            ),
          )),
    );
  }
}
