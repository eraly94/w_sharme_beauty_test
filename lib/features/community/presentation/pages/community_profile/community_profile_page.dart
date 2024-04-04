import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/config.dart';
import 'package:w_sharme_beauty_test/config/theme/app_colors.dart';
import 'package:w_sharme_beauty_test/features/community/presentation/widgets/widgets.dart';
import 'package:w_sharme_beauty_test/features/main/presentation/widgets/widgets.dart';

import '../../../../questions/data/models/stories_model.dart';
import '../../widgets/community/community_list_item.dart';

class CommunityProfilePage extends StatefulWidget {
  const CommunityProfilePage({super.key});

  @override
  State<CommunityProfilePage> createState() => _CommunityProfilePageState();
}

class _CommunityProfilePageState extends State<CommunityProfilePage> {
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

// class CommunityProfilePage extends StatelessWidget {
//   CommunityProfilePage({super.key});

  // final List<String> names = [
  //   "Маникюр",
  //   "Педикюр",
  //   "Брови",
  //   "Ресницы",
  //   "Стрижка",
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text("Сообщество",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 17.0),
            child: Icon(Icons.settings_outlined),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/community/avatar.png"),
                ),
                const SizedBox(width: 15),
                Row(
                  children: [
                    const Column(
                      children: [
                        Text(
                          "23",
                          style: TextStyle(
                              fontSize: 15.5, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Публикации",
                          style: TextStyle(
                              fontSize: 13, color: AppColors.darkGrey),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const MembersPage()));
                      },
                      child: const Column(
                        children: [
                          Text(
                            "2422",
                            style: TextStyle(
                                fontSize: 15.5, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Участников",
                            style: TextStyle(
                                fontSize: 14, color: AppColors.darkGrey),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Комьюнити",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            const Text(
                "Всем привет, мы публикуем самые трендовые и красивые дизайны для твоего маникюра!",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
            const SizedBox(height: 20),
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
            const SizedBox(height: 18),
            const Row(
              children: [
                Expanded(child: CustomBorderContainer(text: "Подписаться")),
                SizedBox(width: 10),
                Expanded(child: CustomBorderContainer(text: "Перейти в чат")),
              ],
            ),
            const SizedBox(height: 20),
            const CommunityListItem(
                text:
                    "Нет ничего более удивительного, чeм мастерство маникюриста, который обладает умением превратить обычные ногти в истинные произведения искусства.Моя цель- не просто ухаживать за ногтями, но и придавать им индивидуальность, отражажющую ваш стиль и характер."),
            const SizedBox(height: 10),
            ListStileWidget(
              onTap: () {},
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/community/avatar.png"),
              ),
              theme: theme,
              title: 'Коммьюнити',
              subtitle: '22 мар в 08:39',
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
          ]),
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
