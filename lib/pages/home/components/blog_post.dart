import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:website/constants/constants.dart';
import 'package:website/helpers/responsive.dart';

import '../../../blog.dart';

class BlogPostcard extends StatelessWidget {
  final Blog blog;
  const BlogPostcard({
    Key key,
    @required this.blog,
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
                    bottomRight: Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Design",
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text(blog.date, style: Theme.of(context).textTheme.caption)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    blog.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: blackColor,
                        fontFamily: 'Raleway',
                        fontSize: ResponsiveWidget.isDesktop(context) ? 32 : 24,
                        height: 1.3,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  blog.description,
                  maxLines: 4,
                  style: TextStyle(height: 1.5),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.only(bottom: defaultPadding / 4),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: blackColor, width: 3))),
                        child: Text(
                          "Read more",
                          style: TextStyle(color: blackColor),
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            "assets/icons/feather_thumbs-up.svg")),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            "assets/icons/feather_message-square.svg")),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            "assets/icons/feather_share-2.svg")),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
