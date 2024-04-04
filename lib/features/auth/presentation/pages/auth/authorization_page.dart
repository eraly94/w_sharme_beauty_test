import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/theme/theme.dart';
import 'package:w_sharme_beauty_test/features/auth/presentation/widgets/text_form_input_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:w_sharme_beauty_test/features/main/presentation/pages/pages.dart';
import 'passwort_reset_page.dart';
import 'sign_up_page.dart';

@RoutePage()
class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({super.key});

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 300),
            Text(
              "Авторизироваться",
              style: theme.textTheme.titleLarge,
            ),
            Text("Что-бы пользоваться сервисом на любом устройстве.",
                style: theme.textTheme.bodySmall),
            Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 30),
                const TextFormInputWidget(
                  labelText: 'Эл.адрес или номер телефона',
                  isPasswordField: false,
                ),
                const SizedBox(height: 10),
                const TextFormInputWidget(
                  labelText: "Введите пароль",
                  isPasswordField: true,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PasswortResetPage()));
                  },
                  child: Text("Забыли пароль?",
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.colorScheme.primary,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 150),
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
                          builder: (context) => const MainPage()));
                },
                child: const Text("Войти",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()));
                },
                child: const Text("Регистрация",
                    style: TextStyle(
                      color: Colors.black,
                    )),
              ),
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
