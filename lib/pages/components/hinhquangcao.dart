import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/constants.dart';
import '../../../helpers/responsive.dart';

class HinhQuangCao extends StatelessWidget {
  const HinhQuangCao({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        constraints: BoxConstraints(maxHeight: 400),
        child: Row(
          children: [
            Hinh(
              linkhinh: "assets/images/slogan/giatsach.webp",
              titlel: "Giặt sạch",
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Hinh(
              linkhinh: "assets/images/slogan/saythom.webp",
              titlel: "Sấy thơm",
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Hinh(
              linkhinh: "assets/images/slogan/xepgon.webp",
              titlel: "Xếp gọn",
            ),
            SizedBox(
              width: defaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}

class Hinh extends StatelessWidget {
  final String linkhinh;
  final String titlel;
  const Hinh({
    Key key,
    this.linkhinh,
    this.titlel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
            child: Image.asset(linkhinh),
          ),
        ),
        Positioned.fill(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Container(
                margin: EdgeInsets.only(bottom: defaultPadding),
                height: MediaQuery.of(context).size.height / 10,
                width: ResponsiveWidget.isDesktop(context)
                    ? MediaQuery.of(context).size.width / 4
                    : MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    color: mainColor.withOpacity(.9),
                    borderRadius:
                        BorderRadius.all(Radius.circular(defaultPadding))),
                padding: EdgeInsets.all(ResponsiveWidget.isDesktop(context)
                    ? defaultPadding
                    : ResponsiveWidget.isTablet(context)
                        ? defaultPadding / 2
                        : defaultPadding / 3),
                child: Center(
                    child: Text(titlel,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: txtSizeLon + 6,
                              fontWeight: FontWeight.bold),
                        ))),
              ),
            ],
          ),
        )
      ],
    );
  }
}
