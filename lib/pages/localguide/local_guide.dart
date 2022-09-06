import 'package:flutter/material.dart';
import 'package:website/blogs/food_blog.dart';
import 'package:website/constants/constants.dart';
import 'package:website/helpers/responsive.dart';

class LocalGuidePage extends StatelessWidget {
  const LocalGuidePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(children: [
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                  foodPosts.length,
                  (index) => BaiFoodPosts(
                        blog: foodPosts[index],
                      )),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
      ]),
    );
  }
}

class BaiFoodPosts extends StatelessWidget {
  final FoodBlog blog;
  const BaiFoodPosts({
    Key key,
    this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.78,
            child: Image.asset(blog.image),
          ),
          Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Food".toUpperCase(),
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: defaultPadding),
                    Text(
                      blog.diachi,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    blog.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: ResponsiveWidget.isDesktop(context) ? 32 : 24,
                      fontFamily: "Roboto",
                      color: blackColor,
                      height: 1.3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  blog.description,
                  maxLines: 4,
                  style: TextStyle(height: 1.5),
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.only(bottom: defaultPadding / 4),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: mainColor, width: 3),
                          ),
                        ),
                        child: Text(
                          "Read More",
                          style: TextStyle(color: blackColor),
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.linked_camera),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.linked_camera),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.linked_camera),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
