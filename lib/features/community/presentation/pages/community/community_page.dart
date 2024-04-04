import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/theme/app_colors.dart';
import 'package:w_sharme_beauty_test/features/community/presentation/widgets/widgets.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(11),
          child: const CircleAvatar(
            backgroundImage: AssetImage("assets/community/ava.png"),
          ),
        ),
        title: const Text(
          "Сообщество",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        actions: [
          Image.asset("assets/community/add.png"),
          const SizedBox(width: 10),
          Image.asset("assets/community/sms.png"),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          children: [
            const FormFieldWidget(
              prefixIcon: Icon(Icons.search, color: AppColors.darkGrey),
              hintText: "Поиск сообщества",
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: SelectionFormFieldWidget(
                      hintText: "Мои сообществa",
                      text: "Мои сообществa",
                      text1: "Все сообществa",
                      hinttextStyle: TextStyle(color: AppColors.darkGrey),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: SizedBox(
                    child: SelectionFormFieldWidget(
                      hintText: "Категория",
                      text: "Маникюр",
                      text1: "Педикюр",
                      hinttextStyle: TextStyle(color: AppColors.darkGrey),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Row(children: [
              Expanded(
                child: SizedBox(
                    width: double.infinity,
                    child: CustomContainerWidget(text: "Все сообщества")),
              ),
              SizedBox(width: 10),
              Expanded(
                child: SizedBox(
                    width: double.infinity,
                    child: CustomContainerWidget(text: "Управляемые")),
              )
            ]),
            const SizedBox(height: 20),
            Expanded(child: BeutyList()),
          ],
        ),
      ),
    );
  }
}
