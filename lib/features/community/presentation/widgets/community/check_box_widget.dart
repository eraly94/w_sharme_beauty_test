import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/theme/app_colors.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: SizedBox(
        width: 20,
        height: 20,
        child: CustomPaint(
          painter: CheckboxPainter(isChecked),
        ),
      ),
    );
  }
}

class CheckboxPainter extends CustomPainter {
  final bool isChecked;

  CheckboxPainter(this.isChecked);

  @override
  void paint(Canvas canvas, Size size) {
    Paint outerCirclePaint = Paint()
      ..color = isChecked ? AppColors.purple : Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    Paint innerCirclePaint = Paint()
      ..color = isChecked ? AppColors.purple : Colors.grey
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2,
        outerCirclePaint);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 4,
        innerCirclePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
