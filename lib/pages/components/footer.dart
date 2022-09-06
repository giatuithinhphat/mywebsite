import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/helpers/responsive.dart';

import '../../constants/constants.dart';

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
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: mainColor,
                  fontSize: txtSizeLon,
                  fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            "Tiệm giặt ủi Thịnh Phát luôn mong muốn học hỏi nhằm để phục vụ quý khách ngày một tốt hơn. ",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: lightgrey,
                  fontSize: ResponsiveWidget.isMobile(context) ? 12 : 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            "Địa chỉ: 17B Nguyễn Ngọc Sanh, Khóm 3, Phường 6, Thành phố Cà Mau",
            textAlign: TextAlign.center,
            maxLines: 2,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: lightgrey,
                  fontSize: ResponsiveWidget.isMobile(context) ? 12 : 14,
                  fontWeight: FontWeight.w400),
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
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: lightgrey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Text(
                "Luke Bùi",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: mainColor.withOpacity(.9),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
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
    return Flexible(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding / 3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
            border: Border.all(color: mainColor, width: 1)),
        child: InkWell(
          child: Text(
            txt,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: lightgrey,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ),
    );
  }
}
