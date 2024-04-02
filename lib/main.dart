import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/features/auth/presentation/pages/pages.dart';
import 'package:w_sharme_beauty_test/features/main/presentation/pages/pages.dart';
import 'package:w_sharme_beauty_test/features/questions/presentation/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: AuthorizationPage(),
      home: MainPage(),
      //home: QuestionsPage(),
    );
  }
}
