import 'package:flutter/material.dart';

import '../../blog.dart';
import '../../constants/constants.dart';
import '../../helpers/responsive.dart';
import '../home/DestinaltionCarousel.dart';
import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_post.dart';
import 'components/search.dart';

class LocalGuidePage extends StatelessWidget {
  const LocalGuidePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            // Body
            Row(
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
            // Footer
            Container(
              width: MediaQuery.of(context).size.width,
            )
          ],
        ),
      ),
    );
  }
}
