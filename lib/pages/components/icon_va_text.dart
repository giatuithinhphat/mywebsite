import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class IconVaText extends StatelessWidget {
  final IconData icon;
  final String txt;
  const IconVaText({
    Key key,
    this.icon,
    this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: mainColor,
        ),
        SizedBox(
          width: defaultPadding,
        ),
        Text(
          txt,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
                color: blackColor,
                fontSize: txtSizeThuong,
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
