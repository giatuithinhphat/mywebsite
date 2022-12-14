import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/helpers/responsive.dart';
import 'package:website/pages/components/quytrinhtieuchuan.dart';
import '../../constants/constants.dart';
import '../components/footer.dart';
import '../components/icon_va_text.dart';
import '../components/quatrinhlamviec.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: ResponsiveWidget.isMobile(context)
          ? MobileShow()
          : ResponsiveWidget.isTablet(context)
              ? TabletShow()
              : DesktopShow(),
    );
  }
}

class TabletShow extends StatelessWidget {
  const TabletShow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/banner/banner.webp"),
        SizedBox(
          height: defaultPadding * 2,
        ),
        LienHe(),
        SizedBox(
          height: defaultPadding * 2,
        ),
        Row(
          children: [
            SizedBox(
              width: defaultPadding / 2,
            ),
            HinhNhoTiem(
              linkhinh: "assets/images/hinhthucte/Cha.jpeg",
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            HinhNhoTiem(
              linkhinh: "assets/images/hinhthucte/Me.jpeg",
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            HinhNhoTiem(
              linkhinh: "assets/images/hinhthucte/Z1000.jpeg",
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Row(
          children: [
            SizedBox(
              width: defaultPadding / 2,
            ),
            HinhNhoTiem(
              linkhinh: "assets/images/hinhthucte/GiatGau.jpeg",
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            HinhNhoTiem(
              linkhinh: "assets/images/hinhthucte/MayGiat.jpeg",
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            HinhNhoTiem(
              linkhinh: "assets/images/hinhthucte/Heo.jpeg",
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding * 2,
        ),
        QuyTrinhTieuChuan(),
        SizedBox(
          height: defaultPadding,
        ),
        Footer(),
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
        SizedBox(
          height: defaultPadding,
        ),
        LienHe(),
        SizedBox(
          height: defaultPadding,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(defaultPadding),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: ClipRRect(
            child: Image.asset("assets/images/thinhphat_vuong.jpeg"),
          ),
        ),
        SizedBox(
          height: defaultPadding * 2,
        ),
        QuaTrinhLamViec(),
        SizedBox(
          height: defaultPadding * 2,
        ),
        Footer(),
      ],
    );
  }
}

class DesktopShow extends StatelessWidget {
  const DesktopShow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/banner/banner.webp"),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultPadding * 2,
            vertical: defaultPadding * 2,
          ),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(defaultPadding),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.all(Radius.circular(defaultPadding)),
                      child: Image.asset("assets/images/thinhphat_vuong.jpeg"),
                    ),
                  )),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    LienHe(),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        QuyTrinhTieuChuan(),
        SizedBox(
          height: defaultPadding,
        ),
        Footer(),
      ],
    );
  }
}

class LienHe extends StatelessWidget {
  const LienHe({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: !ResponsiveWidget.isMobile(context)
          ? EdgeInsets.only(left: defaultPadding)
          : EdgeInsets.all(defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            !ResponsiveWidget.isMobile(context)
                ? "H??y li??n h??? v???i ch??ng t??i"
                : "Li??n H???",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: !ResponsiveWidget.isMobile(context)
                      ? Colors.black
                      : mainColor,
                  fontSize: txtSizeLon * 2,
                  fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(
            height: defaultPadding * 2,
          ),
          Column(
            children: [
              Text(
                "?????i ng?? nh??n vi??n t?? v???n Gi???t ???i Th???nh Ph??t c?? nhi???u kinh nghi???m v?? t??m huy???t v???i kh??ch h??ng. S???n s??ng h??? tr??? kh??ch h??ng ????? t??m ???????c d???ch v??? mong mu???n.",
                maxLines: 2,
                textAlign: TextAlign.justify,
                style: GoogleFonts.roboto(
                  height: 1.5,
                  textStyle: TextStyle(
                      color: blackColor,
                      fontSize: txtSizeThuong + 6,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: defaultPadding,
              ),
              IconVaText(
                  icon: Icons.pin_drop,
                  txt: ResponsiveWidget.isMobile(context)
                      ? "17B Nguy???n Ng???c Sanh, K3, P6, Tp.CM"
                      : "17B Nguy???n Ng???c Sanh, Kh??m 3, Ph?????ng 6, Tp. C?? Mau"),
              SizedBox(
                height: defaultPadding,
              ),
              IconVaText(
                icon: Icons.mail,
                txt: "myhanhtrinh7171@gmail.com",
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Row(
                children: [
                  Icon(
                    Icons.punch_clock,
                    color: mainColor,
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Text(
                    "Gi??? l??m vi???c: 7:00 - 21:00",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: txtSizeThuong,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: mainColor,
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding,
                        vertical: defaultPadding / 2),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(defaultPadding),
                        )),
                    child: Text(
                      "0949.450.567 - G???p H???nh",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: txtSizeThuong,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HinhNhoVaText extends StatelessWidget {
  final String linkhinh;
  final String txt;
  const HinhNhoVaText({
    Key key,
    this.linkhinh,
    this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(defaultPadding))),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
                child: Image.asset(linkhinh)),
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          Text(
            txt,
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: blackColor,
                  fontSize: txtSizeThuong,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
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
