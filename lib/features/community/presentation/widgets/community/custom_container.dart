import 'package:w_sharme_beauty_test/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainerWidget extends StatefulWidget {
  final String text;
  const CustomContainerWidget({super.key, required this.text});

  @override
  State<CustomContainerWidget> createState() => _CustomContainerWidgetState();
}

class _CustomContainerWidgetState extends State<CustomContainerWidget> {
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
                border: Border.all(color: AppColors.lightGrey),
                borderRadius: BorderRadius.circular(12),
                color: isTapped ? AppColors.purple : AppColors.lightGrey),
            child: Center(
              child: Text(
                widget.text,
                style: TextStyle(
                    fontSize: 16,
                    color: isTapped ? AppColors.white : AppColors.darkGrey),
              ),
            ),
          )),
    );
  }
}
