import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  const CustomText({Key key, this.text, this.size, this.color, this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
              color: color ?? Colors.black,
              fontSize: size ?? txtSizeThuong,
              fontWeight: weight ?? FontWeight.normal),
        ));
  }
}
