import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/theme/app_colors.dart';
import 'package:w_sharme_beauty_test/features/community/presentation/widgets/widgets.dart';

class CreateaCommunityPage extends StatelessWidget {
  const CreateaCommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Center(
              child: Text(
            "Создать сообщества",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ))),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Название сообщества",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.darkGrey),
              ),
              const SizedBox(height: 8),
              const FormFieldWidget(
                hintText: "Придумайте название",
              ),
              const SizedBox(height: 14),
              const Text(
                "Выберите категорию",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.darkGrey),
              ),
              const SizedBox(height: 8),
              const FormFieldWidget(
                hintText: "Придумайте название",
                suffixIcon: Icon(Icons.arrow_drop_down),
              ),
              const SizedBox(height: 14),
              const Text(
                "Установите аватар",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.darkGrey),
              ),
              const SizedBox(height: 8),
              Stack(
                children: [
                  const Image(
                    image: AssetImage("assets/images/avatar.png"),
                    height: 100,
                    width: 100,
                  ),
                  Positioned(
                      right: 26,
                      bottom: 65,
                      child: SizedBox(
                        height: 12,
                        width: 12,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.purple),
                          child: const Icon(
                            Icons.close,
                            color: AppColors.white,
                            size: 8,
                          ),
                        ),
                      )),
                ],
              ),
              const CustomElevatedButtonWidget(
                backgraundColor: AppColors.lightPurple,
                text: "+ Выбрать фото",
                textColor: AppColors.purple,
              ),
              const SizedBox(height: 14),
              const Text(
                "Описание",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.darkGrey),
              ),
              const SizedBox(height: 8),
              const FormFieldWidget(
                hintText: "Расскажите о сообществе",
              ),
              const SizedBox(height: 8),
              const Text(
                "Используйте слова,которые описывают тематику сообщества и помогаю быстрее его найти. Изменить описание можно в любой момент.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.darkGrey),
              ),
              const SizedBox(height: 90),
              const CustomElevatedButtonWidget(
                backgraundColor: AppColors.purple,
                text: "Создать сообщество",
                textColor: AppColors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
