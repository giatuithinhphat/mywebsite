import 'package:flutter/material.dart';

class FoodBlog {
  final String diachi, title, description, image;

  FoodBlog({this.diachi, this.title, this.description, this.image});
}

List<FoodBlog> foodPosts = [
  FoodBlog(
    diachi: "23 September 2020",
    image: "assets/images/food/1610-01.png",
    title: "Bánh tầm cay Đạo",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  ),
  FoodBlog(
    diachi: "21 August  2020",
    image: "assets/images/food/1610-02.png",
    title: "Bánh tầm cay Lan",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  ),
  FoodBlog(
    diachi: "23 September 2020",
    image: "assets/images/food/1610-03.png",
    title: "Cà phê Biker",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  ),
  FoodBlog(
    diachi: "23 September 2020",
    image: "assets/images/food/1610-04.png",
    title: "Cà phê Oanh Trang",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  ),
  FoodBlog(
    diachi: "23 September 2020",
    image: "assets/images/food/1610-05.png",
    title: "Cà phê Oanh Trang",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  ),
];

final List<String> foodImgUrl =
    foodPosts.map((FoodBlog blog) => blog.image).toList();

final List<String> foodTitle =
    foodPosts.map((FoodBlog blog) => blog.title).toList();
