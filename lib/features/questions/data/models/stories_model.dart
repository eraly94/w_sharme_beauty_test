import 'package:flutter/material.dart';

class StoriesModel {
  final Image image;
  final String title;

  StoriesModel({
    required this.image,
    required this.title,
  });
}

final List<StoriesModel> stories = [
  StoriesModel(
    image: const Image(image: AssetImage("assets/questions/manikur.png")),
    title: "Маникюр",
  ),
  StoriesModel(
    image: const Image(image: AssetImage("assets/questions/pedikur.png")),
    title: "Педикюр",
  ),
  StoriesModel(
    image: const Image(image: AssetImage("assets/questions/brovi.png")),
    title: "Брови",
  ),
  StoriesModel(
    image: const Image(image: AssetImage("assets/questions/resnitsy.png")),
    title: "Ресницы",
  ),
  StoriesModel(
    image: const Image(image: AssetImage("assets/questions/strishka.png")),
    title: "Стрижка",
  ),
];
