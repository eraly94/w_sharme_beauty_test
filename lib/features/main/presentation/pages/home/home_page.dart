import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:w_sharme_beauty_test/features/main/presentation/pages/home/home.dart';
import 'package:w_sharme_beauty_test/features/main/presentation/widgets/widgets.dart';

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
              child: Image.asset('assets/main/png/noticfication.png')),
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
                          index % 2 == 0
                              ? const Text(
                                  'Нет ничего более удивительного, чем мастерство маникюриста, который обладает умением превратить обычные ногти в истинные произведения искусства. Моя цель - не просто ухаживать за ногтями, но и придавать им индивидуальность, отражающую ваш стиль и характер.',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Нет ничего более удивительного',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Image.asset(
                                        'assets/main/png/main_picture.png'),
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
