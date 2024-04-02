import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/theme/theme.dart';
import 'package:w_sharme_beauty_test/features/auth/presentation/widgets/text_form_input_widget.dart';

class InfoProfilePage extends StatefulWidget {
  const InfoProfilePage({super.key});

  @override
  State<InfoProfilePage> createState() => _InfoProfilePageState();
}

class _InfoProfilePageState extends State<InfoProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 300),
            Text(
              "Данные профиля",
              style: theme.textTheme.titleLarge,
            ),
            Text(
                "Заполните личные данные, чтобы иметь доступ к своим заказам и результатам в приложении",
                style: theme.textTheme.bodySmall),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 30),
                TextFormInputWidget(
                  labelText: "Ваше Ф.И.О.",
                ),
                SizedBox(height: 10),
                TextFormInputWidget(
                  labelText: "Придумайте имя пользователя",
                ),
                SizedBox(height: 10),
                TextFormInputWidget(
                  labelText: "Ваш город",
                ),
                SizedBox(height: 10),
              ],
            ),
            const SizedBox(height: 100),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text("Сохранить",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
