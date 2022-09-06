import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';

class SloganServices extends StatelessWidget {
  const SloganServices({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Giá trị vượt trội của",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
                color: Colors.black,
                fontSize: txtSizeLon * 2,
                fontWeight: FontWeight.w900),
          ),
        ),
        Text(
          " Thịnh Phát",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
                color: mainColor,
                fontSize: txtSizeLon * 2,
                fontWeight: FontWeight.w900),
          ),
        ),
      ],
    );
  }
}
