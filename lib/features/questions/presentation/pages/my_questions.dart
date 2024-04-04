import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/config.dart';

class MyQuestions extends StatefulWidget {
  const MyQuestions({super.key});

  @override
  State<MyQuestions> createState() => _MyQuestionsState();
}

class _MyQuestionsState extends State<MyQuestions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            ' Вопрос',
            style: theme.textTheme.titleMedium,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("assets/questions/ella.png"),
                ),
                title: const Text(
                  'Ella Ivanova',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '22 мар в 08:39',
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.disabledColor,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Посоветуйте каким гель-лаком пользоваться?",
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "2 ответа",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.disabledColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/questions/elena.png"),
                    ),
                    title: Text(
                      'Elena',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Все супер! Хочу записаться. Можете сказать сколько стоило этот маникюр?',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 13),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'сегодня в 15:53',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "ответов 1   ответить",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.favorite_outline),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 15),
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/questions/nastya.png"),
                    ),
                    title: Text(
                      'Nastya',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Спасибо. 5000 рублей',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 13),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'сегодня в 15:53',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "ответов 1 ответить",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.favorite_outline),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/questions/nasti.png"),
                    ),
                    title: Text(
                      'Nasti',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Все супер! Хочу записаться. Можете сказать сколько стоило этот маникюр?',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 13),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'сегодня в 15:53',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "ответов 1   ответить",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.favorite_outline),
                  ),
                ],
              ),
              const SizedBox(
                height: 160,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Ваш комментарий',
                        filled: true,
                        fillColor: const Color.fromARGB(255, 238, 233, 233),
                        labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.secondary),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Icon(
                        Icons.arrow_upward_outlined,
                        color: Theme.of(context).colorScheme.background,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
