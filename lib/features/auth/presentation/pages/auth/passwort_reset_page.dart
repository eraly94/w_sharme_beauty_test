import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:w_sharme_beauty_test/config/theme/theme.dart';
import 'package:w_sharme_beauty_test/features/auth/presentation/pages/auth/reset_confirmation_page.dart';

class PasswortResetPage extends StatefulWidget {
  const PasswortResetPage({super.key});

  @override
  State<PasswortResetPage> createState() => _PasswortResetPageState();
}

class _PasswortResetPageState extends State<PasswortResetPage> {
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
              "Сброс пароля",
              style: theme.textTheme.titleLarge,
            ),
            Text("Чтобы сбросить пароль, введите номер телефона:",
                style: theme.textTheme.bodySmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 30),
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Номер телефона',
                    filled: true,
                    fillColor: const Color(0xffF3F3F3),
                    labelStyle: TextStyle(color: theme.colorScheme.secondary),
                    border: InputBorder.none,
                  ),
                  initialCountryCode: 'KZ',
                  onChanged: (phone) {},
                ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResetConfirmmationPage(),
                    ),
                  );
                },
                child: const Text("Отправить код",
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
