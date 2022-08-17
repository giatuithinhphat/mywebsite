import 'package:flutter/material.dart';
import 'package:website/constants/constants.dart';

import 'sidebar_container.dart';

class RecentPost extends StatelessWidget {
  const RecentPost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
        title: "Recent Posts",
        child: Column(
          children: [
            SingleRecentPost(
              img: "assets/images/food/btc.jpg",
              title: "Our Secret Formula to Online Workshop",
              press: () {},
            ),
            SizedBox(
              height: defaultPadding,
            ),
            SingleRecentPost(
              img: "assets/images/food/btc.jpg",
              title: "Digital Product Innovation from Wasaw with Love",
              press: () {},
            )
          ],
        ));
  }
}

class SingleRecentPost extends StatelessWidget {
  final String img, title;
  final VoidCallback press;
  const SingleRecentPost({
    Key key,
    @required this.img,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(img),
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            Expanded(
              flex: 5,
              child: Text(
                title,
                maxLines: 2,
                style: TextStyle(
                    fontFamily: 'Raleway',
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                    height: 1.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
