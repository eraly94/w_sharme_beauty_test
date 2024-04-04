import 'package:flutter/material.dart';
import 'package:w_sharme_beauty_test/features/auth/presentation/widgets/text_form_input_widget.dart';
import 'package:w_sharme_beauty_test/features/main/presentation/widgets/widgets.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  // final List<Comments> _comments = [
  //   Comments(
  //     username: 'Elena',
  //     text:
  //         'Вы супер! Хочу записаться. Можете сказать, сколько стоит этот маникюр?',
  //     replies: [],
  //   ),
  //   Comments(
  //     username: 'Nastya',
  //     text: 'Спасибо, 5000 рублей',
  //     replies: [],
  //   ),
  //   Comments(
  //     username: 'Nastii',
  //     text:
  //         'Все супер! Хочу записаться. Можете сказать, сколько стоит этот маникюр?',
  //     replies: [],
  //   ),
  // ];
  bool _currentIndex = false;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xffF9FAFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Запись",
          style:
              theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              child: DecoratedBox(
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListStileWidget(
                        onTap: () {},
                        leading: const CircleAvatar(
                            radius: 25,
                            child: Text(
                              "A",
                            )),
                        theme: theme,
                        title: 'Elena Ivanovna',
                        subtitle: '22-март в 15:00',
                        // ignore: prefer_const_constructors
                        trailing: Row(
                          children: const [],
                        ),
                        //trailing: CustomButtonWidget(theme: theme),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Нет ничего более удивительного',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Image.asset("assets/main/png/main_picture.png"),
                      //Image.network(
                      // 'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDI0LTAxL3Jhd3BpeGVsb2ZmaWNlMTJfcGhvdG9fb2ZfeW91bmdfaW5kaWFuX2dpcmxfaG9sZGluZ19zdHVkZW50X2JhY19hNDdmMzk1OS0zZDAyLTRiZWEtYTEzOS1lYzI0ZjdhNjEwZGEucG5n.png'),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          ContainerWidget(
                              text: '122',
                              widget: GestureDetector(
                                onTap: () {
                                  _onTabTapped();
                                },
                                child: _currentIndex
                                    ? const Icon(Icons.favorite,
                                        color: Colors.red)
                                    : const Icon(
                                        Icons.favorite_outline,
                                        color: Colors.grey,
                                      ),
                              )),
                          const SizedBox(width: 10),
                          ContainerWidget(
                            text: '5',
                            widget: Image.asset(
                              'assets/main/png/share.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              child: DecoratedBox(
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('39  Комментарии',
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: const Color(0xff6D6D6D),
                          )),
                      ListView.builder(
                        itemCount: 8,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return const ListTile(
                            contentPadding: EdgeInsets.all(0),
                            leading: CircleAvatar(
                              backgroundImage:
                                  NetworkImage('https://picsum.photos/200'),
                            ),
                            title: Text(
                              'Elena',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Нет ничего более удивительного',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                Text(
                                  'сегодня в 15:53   нравится 5   ответить',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            trailing: Icon(Icons.favorite_outline),
                          );
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Нет ничего более удивительного',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Image.network('https://picsum.photos/300/200'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Expanded(
                              child: SizedBox(
                            height: 50,
                            child: TextFormInputWidget(
                              labelText: 'Ваш Комментарий',
                            ),
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: FloatingActionButton(
                              backgroundColor: theme.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              onPressed: () {},
                              child: const Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
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
