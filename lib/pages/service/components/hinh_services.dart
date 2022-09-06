import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';

class HinhServices extends StatelessWidget {
  const HinhServices({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Hinh(
              linkhinh: "assets/images/services/tienloi.png",
              maintitle: "Tiện Lợi",
            ),
            Hinh(
              linkhinh: "assets/images/services/chatluong.png",
              maintitle: "Chất Lượng",
            ),
            Hinh(
              linkhinh: "assets/images/services/antam.png",
              maintitle: "An Tâm",
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ],
    );
  }
}

class Hinh extends StatelessWidget {
  final String linkhinh, maintitle;
  const Hinh({
    Key key,
    this.linkhinh,
    this.maintitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Container(
            height: 120,
            width: 120,
            child: Image.asset(linkhinh),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            maintitle,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: txtSizeLon,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
