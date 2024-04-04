import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/config.dart';

class AddQuestion extends StatefulWidget {
  const AddQuestion({super.key});

  @override
  State<AddQuestion> createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  bool agreedToTerms = false;

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
            'Задать вопрос',
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
              Text(
                "Тема вопросы",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.disabledColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  constraints: const BoxConstraints(
                      // maxHeight: 46,
                      ),
                  filled: true,
                  fillColor: theme.colorScheme.onPrimary,
                  hintText: 'Придумайте тему вопросы',
                  hintStyle: TextStyle(color: theme.colorScheme.secondary),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Выберите категорию",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.disabledColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    constraints: const BoxConstraints(
                        // maxHeight: 46,
                        ),
                    filled: true,
                    fillColor: theme.colorScheme.onPrimary,
                    hintText: 'Выберите категорию',
                    hintStyle: TextStyle(color: theme.colorScheme.secondary),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(16)),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_downward_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Прикрипеть фото",
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.disabledColor,
                    ),
                  ),
                  Image.asset("assets/questions/attach.png"),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 206, 172, 212),
                        shape: const RoundedRectangleBorder(),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "+ Выбрать фото",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Тема вопросы",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.disabledColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                  constraints: const BoxConstraints(
                      // maxHeight: 46,

                      ),
                  isDense: true,
                  filled: true,
                  fillColor: theme.colorScheme.onPrimary,
                  hintText: 'Расскажите о вопросе подробнее',
                  hintStyle: TextStyle(color: theme.colorScheme.secondary),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              const SizedBox(
                height: 20,
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
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Задать вопрос анонимно',
                            style: TextStyle(
                              color: theme.colorScheme.primary,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.primary,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: agreedToTerms ? () {} : null,
                child: const Text("Опубликовать вопрос",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
