import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(defaultPadding),
      color: Colors.black,
      child: Column(
        children: [
          Text(
            "Giặt Ủi Thịnh Phát",
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: mainColor,
                  fontSize: txtSizeLon,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            "Tiệm giặt ủi Thịnh Phát luôn mong muốn học hỏi nhằm để phục vụ quý khách ngày một tốt hơn. ",
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DanhMuc(
                txt: "Home",
              ),
              SizedBox(
                width: defaultPadding,
              ),
              DanhMuc(
                txt: "About",
              ),
              SizedBox(
                width: defaultPadding,
              ),
              DanhMuc(
                txt: "Services",
              ),
              SizedBox(
                width: defaultPadding,
              ),
              DanhMuc(
                txt: "Local Guide",
              )
            ],
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Design By - ",
                style: GoogleFonts.notoSerif(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Text(
                "Luke Bùi",
                style: GoogleFonts.notoSerif(
                  textStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DanhMuc extends StatelessWidget {
  final String txt;

  const DanhMuc({
    Key key,
    this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
          border: Border.all(color: mainColor, width: 1)),
      child: InkWell(
        child: Text(
          txt,
          style: GoogleFonts.notoSerif(
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
