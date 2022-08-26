import 'dart:html';
import 'package:flutter/material.dart';
import 'package:website/blogs/drink_blog.dart';
import 'package:website/blogs/quan_blog.dart';
import 'package:website/constants/constants.dart';

class QuanCard extends StatelessWidget {
  final QuanNhau blog;
  const QuanCard({
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
            padding: EdgeInsets.all(defaultPadding / 2),
            child: Column(
              children: [
                Image.asset(blog.image),
                SizedBox(
                  height: defaultPadding / 3,
                ),
                Text(blog.title),
              ],
            )),
      ),
    );
  }
}
