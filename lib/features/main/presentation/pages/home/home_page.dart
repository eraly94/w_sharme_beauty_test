import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:w_sharme_beauty_test/features/main/presentation/pages/pages.dart';
import 'package:w_sharme_beauty_test/features/main/presentation/widgets/widgets.dart';

import 'comment/comment_example.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _currentIndex = false;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFF),
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: CircleAvatar(child: Text("A")),
        ),
        title: Text(
          "Главная",
          style:
              theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()));
              },
              child: Image.asset('assets/main/png/notification.png')),
          const SizedBox(width: 10),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatScreen()));
              },
              child: Image.asset('assets/main/png/chat.png')),
          const SizedBox(width: 10),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: ListView.separated(
            itemBuilder: (context, index) => SizedBox(
                  child: DecoratedBox(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          ListStileWidget(theme: theme),
                          const SizedBox(height: 10),
                          index % 2 == 0
                              ? const Text(
                                  'Нет ничего более удивительного, чем мастерство маникюриста, который обладает умением превратить обычные ногти в истинные произведения искусства. Моя цель - не просто ухаживать за ногтями, но и придавать им индивидуальность, отражающую ваш стиль и характер.',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Мастер Маникюр',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Image.network(
                                        'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDI0LTAxL3Jhd3BpeGVsb2ZmaWNlMTJfcGhvdG9fb2ZfeW91bmdfaW5kaWFuX2dpcmxfaG9sZGluZ19zdHVkZW50X2JhY19hNDdmMzk1OS0zZDAyLTRiZWEtYTEzOS1lYzI0ZjdhNjEwZGEucG5n.png'),
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
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CommentPage(),
                                      ));
                                },
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
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const TestMe(),
                                      ));
                                },
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
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: 10),
      ),
    );
  }

  void _onTabTapped() {
    setState(() {
      _currentIndex = !_currentIndex;
    });
  }
}
