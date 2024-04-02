import 'package:flutter/material.dart';

import 'package:pinput/pinput.dart';
import 'package:w_sharme_beauty_test/config/theme/theme.dart';
import 'package:w_sharme_beauty_test/features/auth/presentation/pages/auth/info_profile_page.dart';

class ConfirmOtpPage extends StatefulWidget {
  const ConfirmOtpPage({super.key});

  @override
  State<ConfirmOtpPage> createState() => _ConfirmOtpPageState();
}

class _ConfirmOtpPageState extends State<ConfirmOtpPage> {
  bool _obscureText = true;
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
              "Регистрация",
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
                              builder: (context) => const InfoProfilePage()));
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

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
