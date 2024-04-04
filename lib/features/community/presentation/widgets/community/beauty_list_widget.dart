import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/theme/app_colors.dart';
import 'package:w_sharme_beauty_test/features/community/presentation/pages/pages.dart';

class BeutyList extends StatelessWidget {
  BeutyList({super.key});
  final List<String> kategories = [
    "Маникюр, 152 участников",
    "Ресницы, 152 участников",
    "Брови, 152 участников",
    "Стрижка, 152 участников",
    "Маникюр, 152 участников",
    "Брови, 152 участников",
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const CommunityProfilePage()));
      },
      child: ListView.builder(
          itemCount: kategories.length,
          itemExtent: 55,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/community/avatar.png"),
              ),
              title: const Text(
                "Комьюнити",
                style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                kategories[index],
                style: const TextStyle(fontSize: 14, color: AppColors.darkGrey),
              ),
            );
          }),
    );
  }
}
