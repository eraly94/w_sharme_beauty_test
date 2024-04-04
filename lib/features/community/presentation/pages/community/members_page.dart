import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/theme/app_colors.dart';
import 'package:w_sharme_beauty_test/features/community/presentation/widgets/widgets.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
          title: const Center(
              child: Text(
            "Участники сообщества",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ))),
      body: const Padding(
        padding: EdgeInsets.all(17.0),
        child: Column(children: [
          FormFieldWidget(
            prefixIcon: Icon(Icons.search, color: AppColors.darkGrey),
            hintText: "Поиск",
          ),
          SizedBox(height: 10),
          Expanded(child: MembersPage())
        ]),
      ),
    );
  }
}
