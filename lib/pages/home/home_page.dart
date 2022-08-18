import 'package:flutter/material.dart';
import 'package:website/constants/constants.dart';

import 'carousel_slider_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        CarouselSliderPage(),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(defaultPadding),
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(defaultPadding / 4)),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width,
          child: Text(
            "Địa điểm Ăn - Uống",
            style: TextStyle(
                color: blackColor,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
