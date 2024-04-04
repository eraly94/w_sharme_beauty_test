import 'package:flutter/material.dart';

import 'package:w_sharme_beauty_test/config/config.dart';
import 'package:w_sharme_beauty_test/config/theme/theme.dart';
import 'package:w_sharme_beauty_test/features/questions/presentation/pages/questions/add_question.dart';

import '../../../data/models/stories_model.dart';
import '../../widgets/questions_widget.dart';
import '../my_questions.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  List<StoriesModel> storiesModel = [];
  @override
  void initState() {
    super.initState();
    storiesModel = [
      StoriesModel(
          image: ('assets/questions/manikur.png'),
          title: 'Маникюр',
          onTap: () {}),
      StoriesModel(
          image: ('assets/questions/pedikur.png'),
          title: 'Педикюр',
          onTap: () {}),
      StoriesModel(
        image: ('assets/questions/brovi.png'),
        title: 'Брови',
        onTap: () {},
      ),
      StoriesModel(
          image: ('assets/questions/resnitsy.png'),
          title: 'Ресницы',
          onTap: () {}),
      StoriesModel(
          image: ('assets/questions/strishka.png'),
          title: 'Стрижка',
          onTap: () {}),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Scaffold(
          appBar: AppBar(
            leading: Image.asset("assets/questions/ava.png"),
            centerTitle: false,
            title: Text(
              'Вопросы и ответы',
              style: theme.textTheme.titleMedium,
            ),
            actions: [
              Image.asset("assets/questions/bell.png"),
            ],
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    constraints: const BoxConstraints(
                      maxHeight: 46,
                    ),
                    filled: true,
                    fillColor: theme.colorScheme.onPrimary,
                    hintText: 'Поиск',
                    hintStyle: TextStyle(color: theme.colorScheme.secondary),
                    prefixIcon:
                        Icon(Icons.search, color: theme.colorScheme.secondary),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    QuestionsWidget(
                      wrapText: 'Мои вопросы',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyQuestions()));
                      },
                    ),
                    QuestionsWidget(
                      wrapText: 'Мои ответы',
                      onTap: () {},
                    ),
                    QuestionsWidget(
                      wrapText: 'Задать вопрос',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddQuestion()));
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Категории",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.secondary,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: storiesModel.length,
                    itemBuilder: (item, index) {
                      final StoriesModel story = storiesModel[index];
                      return Column(
                        children: [
                          Image.asset(
                            story.image.toString(),
                            color: theme.colorScheme.primary,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            story.title.toString(),
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/questions/Irina.png"),
                      ),
                      title: const Text(
                        'Irina',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Посоветуйте каким гель-лаком пользоваться?',
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    const Row(
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
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/questions/anonim.png"),
                      ),
                      title: const Text(
                        'Irina',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Посоветуйте каким гель-лаком пользоваться?',
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    const Row(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
