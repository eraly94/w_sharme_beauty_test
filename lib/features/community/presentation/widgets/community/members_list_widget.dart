import 'package:w_sharme_beauty_test/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomListTileWidgte extends StatefulWidget {
  const CustomListTileWidgte({super.key});

  @override
  State<CustomListTileWidgte> createState() => _CustomListTileWidgteState();
}

class _CustomListTileWidgteState extends State<CustomListTileWidgte> {
  bool isTapped = false;
  final List<String> members = [
    "Nasya",
    "Irina",
    "Irina",
    "Irina",
    "Irina",
    "Irina",
    "Irina",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 7,
        itemExtent: 55,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/images/avatar.png"),
            ),
            title: Text(
              members[index],
              style:
                  const TextStyle(fontSize: 15.5, fontWeight: FontWeight.w500),
            ),
            subtitle: const Text(
              "c 12.02.2024",
              style: TextStyle(fontSize: 14, color: AppColors.darkGrey),
            ),
            // trailing: GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       isTapped = !isTapped;
            //     });
            //   },
            //   child: SizedBox(
            //       width: 100,
            //       height: 33,
            //       child: DecoratedBox(
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(12),
            //             color: isTapped
            //                 ? AppColors.purple
            //                 : AppColors.lightGrey),
            //         child: Center(
            //           child: Text(
            //             isTapped ? "Вы подписаны" : "Подписаться",
            //             style: TextStyle(
            //                 fontSize: 16,
            //                 color: isTapped
            //                     ? AppColors.white
            //                     : AppColors.darkGrey),
            //           ),
            //         ),
            //       )),
            // )
            // ,
          );
        });
  }
}
