import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/config.dart';
import 'package:w_sharme_beauty_test/config/theme/theme.dart';
import 'package:w_sharme_beauty_test/features/main/presentation/widgets/widgets.dart';
import 'package:w_sharme_beauty_test/features/questions/data/models/stories_model.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<StoriesModel> storiesModel = [];
  bool _currentIndex = false;

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
            centerTitle: false,
            title: Text(
              'Профиль',
              style: theme.textTheme.titleLarge,
            ),
            actions: [
              Image.asset("assets/questions/bell.png"),
              const SizedBox(width: 10),
              Image.asset("assets/profile/settings.png"),
            ],
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/profile/avatar.png"),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Text(
                            "23",
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            "Публикации",
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.secondary,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "2422",
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            "Подписчиков",
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.secondary,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "51",
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            "Подписок",
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.secondary,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text("Anna Smirnova", style: theme.textTheme.titleMedium),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset("assets/profile/point.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset("assets/profile/rating.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/profile/location.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Москва, Россия",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Привет я Анна, я из города Москва. Занимаюсь маникюром более 10 лет. Успей записаться на выходные!",
                    style: theme.textTheme.bodyMedium,
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
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.background,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Редактировать профиль",
                        style: TextStyle(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
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
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/profile/plus.png",
                            color: theme.colorScheme.primary,
                          ),
                          const Text(
                            " Опубликовать",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ListStileWidget(
                    onTap: () {},
                    leading: const CircleAvatar(child: Text("A")),
                    theme: theme,
                    title: 'Elena Ivanovna',
                    subtitle: '22-март в 15:00',
                    trailing: CustomButtonWidget(
                      theme: theme,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Нет ничего более удивительного',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Image.asset('assets/main/png/main_picture.png'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      ContainerWidget(
                        text: '221',
                        widget: GestureDetector(
                          onTap: () {
                            _onTabTapped();
                          },
                          child: _currentIndex
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : const Icon(
                                  Icons.favorite_outline,
                                  color: Colors.grey,
                                ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ContainerWidget(
                        onTap: () {},
                        widget: Image.asset(
                          'assets/main/png/comments.png',
                          // ignore: deprecated_member_use
                          color: Colors.grey,
                        ),
                        text: '45',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ContainerWidget(
                        onTap: () {},
                        text: '6',
                        widget: Image.asset(
                          'assets/main/png/share.png',
                          // ignore: deprecated_member_use
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTabTapped() {
    setState(() {
      _currentIndex = !_currentIndex;
    });
  }
}
