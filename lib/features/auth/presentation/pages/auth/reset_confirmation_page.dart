import 'package:flutter/material.dart';

import 'package:pinput/pinput.dart';
import 'package:w_sharme_beauty_test/config/theme/theme.dart';
import 'package:w_sharme_beauty_test/features/auth/presentation/pages/pages.dart';

class ResetConfirmmationPage extends StatefulWidget {
  const ResetConfirmmationPage({super.key});

  @override
  State<ResetConfirmmationPage> createState() => _ResetConfirmmationPageState();
}

class _ResetConfirmmationPageState extends State<ResetConfirmmationPage> {
  bool agreedToTerms = false;

  bool submited = false;

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
            const Text(
              " Мы отправили SMS с кодом на Ваш телефон или в эл.почту введите его.",
            ),
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Pinput(
                    length: 4,
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsRetrieverApi,
                    onCompleted: (value) {
                      setState(() {
                        submited = true;
                      });
                    },
                    onSubmitted: (value) {
                      setState(() {
                        submited = true;
                      });
                    },
                    defaultPinTheme: PinTheme(
                      width: 60,
                      height: 70,
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(234, 239, 243, 1)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Text(
                "Отправить повторно через 00:55",
                style: TextStyle(
                  color: theme.colorScheme.secondary,
                ),
              ),
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
              onPressed: submited
                  ? () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewPasswordPage()));
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
