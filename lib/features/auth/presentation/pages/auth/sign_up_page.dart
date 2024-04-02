import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/theme/theme.dart';
import 'package:w_sharme_beauty_test/features/auth/presentation/widgets/text_form_input_widget.dart';

import 'confirm_otp_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool agreedToTerms = false;

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
              "Регистрация",
              style: theme.textTheme.titleLarge,
            ),
            Text(
                "Введите электронный адрес или номер телефона и придумайте пароль.",
                style: theme.textTheme.bodySmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const TextFormInputWidget(
                  labelText: 'Эл.адрес или номер телефона',
                ),
                const SizedBox(height: 10),
                const TextFormInputWidget(
                  isPasswordField: true,
                  labelText: 'Пароль',
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      activeColor: theme.colorScheme.primary,
                      shape: CircleBorder(
                        side: BorderSide(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      value: agreedToTerms,
                      onChanged: (value) {
                        setState(() {
                          agreedToTerms = value!;
                        });
                      },
                    ),
                    Expanded(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Я даю согласие на ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'рассылку уведомлений.',
                              style: TextStyle(
                                color: theme.colorScheme.primary,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 150),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: agreedToTerms
                  ? () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ConfirmOtpPage()));
                    }
                  : null,
              child: const Text("Продолжить",
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
