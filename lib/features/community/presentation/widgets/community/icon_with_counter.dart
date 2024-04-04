import 'package:w_sharme_beauty_test/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class IconWithCounter extends StatelessWidget {
  final IconData icon;
  final int counter;

  const IconWithCounter({
    super.key,
    required this.icon,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 33,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.lightGrey),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.darkGrey, size: 20),
            const SizedBox(width: 5),
            Text(
              '$counter',
              style: const TextStyle(color: AppColors.darkGrey),
            ),
          ],
        ),
      ),
    );
  }
}
