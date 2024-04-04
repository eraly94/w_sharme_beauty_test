import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/theme/theme.dart';
import 'package:w_sharme_beauty_test/features/auth/presentation/widgets/text_form_input_widget.dart';

import 'authorization_page.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
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
              "Новый пароль",
              style: theme.textTheme.titleLarge,
            ),
            Text("Придумайте новый пароль.", style: theme.textTheme.bodySmall),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 30),
                SizedBox(height: 10),
                TextFormInputWidget(
                  isPasswordField: true,
                  labelText: 'Новый пароль',
                ),
                SizedBox(height: 10),
                TextFormInputWidget(
                  isPasswordField: true,
                  labelText: 'Ваш пароль',
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
                          builder: (context) => const AuthorizationPage()));
                },
                child: const Text("Готово",
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
