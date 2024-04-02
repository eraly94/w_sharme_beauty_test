import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/config/config.dart';
import 'package:w_sharme_beauty_test/features/ads/presentation/pages/ads/ads_page.dart';
import 'package:w_sharme_beauty_test/features/community/presentation/pages/pages.dart';
import 'package:w_sharme_beauty_test/features/main/presentation/pages/pages.dart';
import 'package:w_sharme_beauty_test/features/questions/presentation/pages/questions/questions_page.dart';

import '../../../../profile/presentation/pages/profile/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: _currentIndex,
      keepPage: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value) {
              _currentIndex = value;
              setState(() {});
            },
            children: const [
              HomePage(),
              AdsPage(),
              QuestionsPage(),
              CommunityPage(),
              ProfilePage(),
            ]),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            height: 1.6,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            height: 1.6,
          ),
          selectedItemColor: theme.primaryColor,
          items: [
            BottomNavigationBarItem(
              label: "Главная",
              icon: Image.asset(
                "assets/nav_bar_icons/home.png",
                width: 28,
                height: 28,
                // ignore: deprecated_member_use
                color: _currentIndex == 0 ? theme.primaryColor : Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/nav_bar_icons/announcement.png",
                width: 28,
                height: 28,
                // ignore: deprecated_member_use
                color: _currentIndex == 1 ? theme.primaryColor : Colors.grey,
              ),
              label: "Объявления",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/nav_bar_icons/question.png",
                width: 28,
                height: 28,

                // ignore: deprecated_member_use
                color: _currentIndex == 2 ? theme.primaryColor : Colors.grey,
              ),
              label: "Вопрос",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/nav_bar_icons/community.png",
                width: 28,
                height: 28,
                // ignore: deprecated_member_use
                color: _currentIndex == 3 ? theme.primaryColor : Colors.grey,
              ),
              label: "Сообщество",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/nav_bar_icons/profile.png",
                width: 28,
                height: 28,

                // ignore: deprecated_member_use
                color: _currentIndex == 4 ? theme.primaryColor : Colors.grey,
              ),
              label: "Профиль",
            ),
          ],
        ),
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 10),
      curve: Curves.bounceIn,
    );
  }
}
