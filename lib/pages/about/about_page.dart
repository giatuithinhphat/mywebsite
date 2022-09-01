import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/helpers/responsive.dart';
import '../../constants/constants.dart';
import '../components/footer.dart';
import '../components/quatrinhlamviec.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

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
        LienHe(),
        SizedBox(
          height: defaultPadding,
        ),
        Row(
          children: [
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
              linkhinh: "assets/images/hinhquangcaotiem/2.webp",
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            HinhNhoTiem(
              linkhinh: "assets/images/hinhquangcaotiem/3.webp",
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
            SizedBox(
              width: defaultPadding / 2,
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        QuaTrinhLamViec(),
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
            child: Image.asset("assets/images/about/tphat.webp"),
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        QuaTrinhLamViec(),
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
        Container(
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height / 1.5),
          padding: EdgeInsets.symmetric(
            horizontal: defaultPadding / 2,
            vertical: defaultPadding / 2,
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
                      child: Image.asset("assets/images/about/tphat.webp"),
                    ),
                  )),
              SizedBox(
                width: defaultPadding / 2,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    LienHe(),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    QuaTrinhLamViec(),
                  ],
                ),
              )
            ],
          ),
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
      width: double.infinity,
      padding: EdgeInsets.only(left: defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Hãy liên hệ với chúng tôi",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: txtSizeLon * 1.2,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Column(
            children: [
              Text(
                "Đội ngũ nhân viên tư vấn Giặt Ủi Thịnh Phát có nhiều kinh nghiệm và tâm huyết với khách hàng. Sẵn sàng hỗ trợ khách hàng để tìm được dịch vụ mong muốn.",
                maxLines: 2,
                style: GoogleFonts.notoSerif(
                  height: 1.5,
                  textStyle: TextStyle(
                      color: blackColor,
                      fontSize: txtSizeNho,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: defaultPadding / 2,
              ),
              IconVaText(
                  icon: Icons.phone, txt: "0949.450.567 - (Hạnh Trịnh)."),
              SizedBox(
                height: defaultPadding / 2,
              ),
              IconVaText(
                  icon: Icons.pin_drop,
                  txt: ResponsiveWidget.isMobile(context)
                      ? "17B Nguyễn Ngọc Sanh, K3, P6, Tp.CM"
                      : "17B Nguyễn Ngọc Sanh, Khóm 3, Phường 6, Tp. Cà Mau"),
              SizedBox(
                height: defaultPadding / 2,
              ),
              IconVaText(
                icon: Icons.mail,
                txt: "myhanhtrinh7171@gmail.com",
              ),
              SizedBox(
                height: defaultPadding / 2,
              ),
              Row(
                children: [
                  Icon(
                    Icons.punch_clock,
                    color: lightgrey,
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  Text(
                    "Giờ làm việc: 7:00 - 21:00",
                    style: GoogleFonts.notoSerif(
                      textStyle: TextStyle(
                          color: lightgrey,
                          fontSize: txtSizeNho,
                          fontWeight: FontWeight.normal),
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
                fontSize: txtSizeNho,
                fontWeight: FontWeight.w700),
          ),
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
