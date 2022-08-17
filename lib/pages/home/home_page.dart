import 'package:flutter/material.dart';
import 'package:website/constants/constants.dart';
import 'package:website/helpers/responsive.dart';
import '../../blog.dart';
import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_post.dart';
import 'components/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: List.generate(
                  blogPosts.length,
                  (index) => BlogPostcard(
                        blog: blogPosts[index],
                      )),
            ),
          ),
          if (!ResponsiveWidget.isMobile(context))
            SizedBox(
              width: defaultPadding,
            ),
          //Sizebar
          if (!ResponsiveWidget.isMobile(context))
            Expanded(
                child: Column(
              children: [
                Search(),
                SizedBox(
                  height: defaultPadding,
                ),
                Categories(),
                SizedBox(
                  height: defaultPadding,
                ),
                RecentPost(),
              ],
            ))
        ],
      ),
    );
  }
}
