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
                ? "Hãy liên hệ với chúng tôi"
                : "Liên Hệ",
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
                "Đội ngũ nhân viên tư vấn Giặt Ủi Thịnh Phát có nhiều kinh nghiệm và tâm huyết với khách hàng. Sẵn sàng hỗ trợ khách hàng để tìm được dịch vụ mong muốn.",
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
                      ? "17B Nguyễn Ngọc Sanh, K3, P6, Tp.CM"
                      : "17B Nguyễn Ngọc Sanh, Khóm 3, Phường 6, Tp. Cà Mau"),
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
                    "Giờ làm việc: 7:00 - 21:00",
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
                      "0949.450.567 - Gặp Hạnh",
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
