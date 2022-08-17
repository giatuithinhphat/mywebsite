import 'package:flutter/material.dart';
import 'package:website/constants/constants.dart';
import 'package:website/pages/home/components/sidebar_container.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
        title: "Categories",
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Category(
              title: "Artificial Interligence",
              numofItems: 3,
              press: () {},
            ),
            Category(
              title: "Virtual Reality",
              numofItems: 16,
              press: () {},
            ),
            Category(
              title: "Cloud Computing",
              numofItems: 5,
              press: () {},
            ),
            Category(
              title: "Data Analystic",
              numofItems: 20,
              press: () {},
            ),
          ],
        ));
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numofItems;
  final VoidCallback press;
  const Category({
    Key key,
    @required this.title,
    @required this.numofItems,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 4),
      child: TextButton(
        onPressed: press,
        child: Text.rich(TextSpan(
            text: title,
            style: TextStyle(color: blackColor),
            children: [
              TextSpan(
                  text: " ($numofItems)", style: TextStyle(color: blackColor))
            ])),
      ),
    );
  }
}
