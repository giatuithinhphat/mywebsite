import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:website/blog.dart';
import 'package:website/constants/constants.dart';

class CarouselSliderPage extends StatelessWidget {
  List<Widget> generateImagesTiles() {
    return imgUrl
        .map((e) => ClipRRect(
              child: Image.asset(
                e,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 3),
      color: whiteColor,
      padding: EdgeInsets.only(top: defaultPadding),
      child: Stack(
        children: [
          CarouselSlider(
            items: generateImagesTiles(),
            options: CarouselOptions(
                viewportFraction: 1,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9),
          )
        ],
      ),
    );
  }
}
