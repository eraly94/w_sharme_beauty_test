import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/theme/theme.dart';

class QuestionsWidget extends StatelessWidget {
  const QuestionsWidget({
    super.key,
    required this.wrapText,
    required this.onTap,
  });
  final String wrapText;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Text(
            wrapText,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
