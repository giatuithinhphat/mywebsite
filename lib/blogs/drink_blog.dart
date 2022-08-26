import 'package:flutter/material.dart';

class DrinkBlog {
  final date, title, image, description;
  DrinkBlog({
    this.date,
    this.title,
    this.image,
    this.description,
  });
}

List<DrinkBlog> drinkPosts = [
  DrinkBlog(
      date: "12 Aug 2022",
      title: "Cà Phê Biker",
      image: "assets/images/food/1610-02.png",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
  DrinkBlog(
      date: "12 Aug 2022",
      title: "Cà Phê Biker",
      image: "assets/images/food/1610-02.png",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
  DrinkBlog(
      date: "12 Aug 2022",
      title: "Cà Phê Biker",
      image: "assets/images/food/1610-02.png",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
];

List<String> drinkImgUrl = drinkPosts
    .map(
      (DrinkBlog blog) => blog.image,
    )
    .toList();

List<String> drinkTitle =
    drinkPosts.map((DrinkBlog blog) => blog.title).toList();
