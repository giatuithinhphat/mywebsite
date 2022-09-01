import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/helpers/responsive.dart';

import '../../../constants/constants.dart';

class HinhAnhCuaTiem extends StatelessWidget {
  const HinhAnhCuaTiem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isDesktop(context)
              ? defaultPadding
              : ResponsiveWidget.isTablet(context)
                  ? defaultPadding / 2
                  : defaultPadding / 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Một vài hình ảnh của tiệm",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: blackColor,
                  fontSize: txtSizeLon,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text("Hình ảnh chụp thực tế tại tiệm giặt ủi",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: mainColor,
                    fontSize: txtSizeThuong,
                    fontWeight: FontWeight.normal),
              )),
          SizedBox(
            height: defaultPadding,
          ),
          ResponsiveWidget.isDesktop(context) ? DesktopShow() : MobileShow(),
        ],
      ),
    );
  }
}

class DesktopShow extends StatelessWidget {
  const DesktopShow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ]),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                        "assets/images/hinhquangcaotiem/ngang.webp")),
              )),
        ),
        SizedBox(
          width: defaultPadding / 2,
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Row(
                children: [
                  HinhNhoTiem(
                    linkhinh: "assets/images/hinhquangcaotiem/5.webp",
                  ),
                  SizedBox(
                    width: defaultPadding / 2,
                  ),
                  HinhNhoTiem(
                    linkhinh: "assets/images/hinhquangcaotiem/2.webp",
                  ),
                  SizedBox(
                    width: defaultPadding / 2,
                  ),
                  HinhNhoTiem(
                    linkhinh: "assets/images/hinhquangcaotiem/3.webp",
                  ),
                ],
              ),
              SizedBox(
                height: defaultPadding / 2,
              ),
              Row(
                children: [
                  HinhNhoTiem(
                    linkhinh: "assets/images/hinhquangcaotiem/4.webp",
                  ),
                  SizedBox(
                    width: defaultPadding / 2,
                  ),
                  HinhNhoTiem(
                    linkhinh: "assets/images/hinhquangcaotiem/1.webp",
                  ),
                  SizedBox(
                    width: defaultPadding / 2,
                  ),
                  HinhNhoTiem(
                    linkhinh: "assets/images/hinhquangcaotiem/6.webp",
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MobileShow extends StatelessWidget {
  const MobileShow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset("assets/images/hinhquangcaotiem/ngang.webp")),
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Row(
          children: [
            HinhNhoTiem(
              linkhinh: "assets/images/hinhquangcaotiem/1.webp",
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            HinhNhoTiem(
              linkhinh: "assets/images/hinhquangcaotiem/2.webp",
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            HinhNhoTiem(
              linkhinh: "assets/images/hinhquangcaotiem/3.webp",
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Row(
          children: [
            HinhNhoTiem(
              linkhinh: "assets/images/hinhquangcaotiem/4.webp",
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            HinhNhoTiem(
              linkhinh: "assets/images/hinhquangcaotiem/5.webp",
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            HinhNhoTiem(
              linkhinh: "assets/images/hinhquangcaotiem/6.webp",
            ),
          ],
        ),
      ],
    );
  }
}

class HinhNhoTiem extends StatelessWidget {
  final String linkhinh;
  const HinhNhoTiem({
    Key key,
    this.linkhinh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ]),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Image.asset(linkhinh)),
      ),
    );
  }
}
