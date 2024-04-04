import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/theme/app_colors.dart';
import 'package:w_sharme_beauty_test/features/community/presentation/widgets/widgets.dart';

class CommunityListItem extends StatelessWidget {
  final String? text;
  final ImageProvider? image;

  const CommunityListItem({
    super.key,
    this.text,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/community/avatar.png"),
          ),
          title: Text(
            "Комьюнити",
            style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            "22 мар в 08:39",
            style: TextStyle(fontSize: 14, color: AppColors.darkGrey),
          ),
        ),
        Text(
          '$text',
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 5),
        if (image != null) Image(image: image!),
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconWithCounter(icon: Icons.favorite_border, counter: 255),
            SizedBox(width: 25),
            IconWithCounter(icon: Icons.comment, counter: 32),
            SizedBox(width: 25),
            IconWithCounter(icon: Icons.next_plan_outlined, counter: 6),
          ],
        ),
      ],
    );
  }
}
