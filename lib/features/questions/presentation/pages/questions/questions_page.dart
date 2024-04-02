import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'package:w_sharme_beauty_test/config/config.dart';
import 'package:w_sharme_beauty_test/config/theme/theme.dart';

import '../../../data/models/stories_model.dart';
import '../../widgets/questions_widget.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  final List<StoriesModel> storiesModel = [];
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    QuestionsWidget(
                      wrapText: 'Мои вопросы',
                    ),
                    QuestionsWidget(
                      wrapText: 'Мои ответы',
                    ),
                    QuestionsWidget(
                      wrapText: 'Задать вопрос',
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
                              color: theme.colorScheme.secondary,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
