import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:website/constants/constants.dart';

import 'food_blog.dart';

class FoodBlogCard extends StatelessWidget {
  final FoodBlog blog;
  const FoodBlogCard({
    Key key,
    @required this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(bottom: defaultPadding / 2),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(blog.image),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      blog.title,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      blog.description,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
