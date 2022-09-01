import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/helpers/responsive.dart';

import '../../../constants/constants.dart';

class GioiThieuTiem extends StatelessWidget {
  const GioiThieuTiem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveWidget.isDesktop(context)
                ? defaultPadding
                : ResponsiveWidget.isTablet(context)
                    ? defaultPadding
                    : defaultPadding / 2),
        child: ResponsiveWidget.isDesktop(context)
            ? DesktopShow()
            : MobileTabletShow(),
      ),
    );
  }
}

class MobileTabletShow extends StatelessWidget {
  const MobileTabletShow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Giặt ủi Thịnh Phát",
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: blackColor,
                  fontSize: txtSizeLon + 6,
                  fontWeight: FontWeight.bold),
            )),
        SizedBox(
          height: defaultPadding / 4,
        ),
        Text("Sơ lược về bổn tiệm",
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: mainColor,
                  fontSize: txtSizeThuong,
                  fontWeight: FontWeight.normal),
            )),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          "Với kinh nghiệm làm việc nhiều năm về ngành nghề giặt ủi cùng với các trang thiết bị máy móc hiện đại và đội ngũ nhân viên chuyên nghiệp. Dịch vụ Giặt ủi Thịnh Phát tự hào là một trong những đối tác của các Cơ sở Spa, Nhà hàng và các Khách sạn lớn nhỏ tại TP. Cà Mau.",
          style: GoogleFonts.notoSerif(
            height: 1.5,
            textStyle: TextStyle(
                color: blackColor,
                fontSize: txtSizeThuong,
                fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(
          height: defaultPadding / 3,
        ),
        IConGioiThieu(
          icon: Icons.money_off,
          noidung: "Chi phí cạnh tranh",
        ),
        SizedBox(
          height: defaultPadding / 3,
        ),
        IConGioiThieu(
          icon: Icons.cabin,
          noidung: "Giao - nhận hàng tận nơi",
        ),
        SizedBox(
          height: defaultPadding / 3,
        ),
        IConGioiThieu(
          icon: Icons.safety_check,
          noidung: "Thiết bị hiện đại",
        ),
        SizedBox(
          height: defaultPadding / 3,
        ),
        IConGioiThieu(
          icon: Icons.check,
          noidung: "Chất lượng dịch vụ tốt",
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Container(
          padding: EdgeInsets.all(defaultPadding),
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(defaultPadding / 4),
            ),
            color: Colors.red,
          ),
          child: Center(
              child: Text(
            "Hotline : 0949450567",
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: txtSizeThuong,
                  fontWeight: FontWeight.bold),
            ),
          )),
        ),
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
                child: Image.asset("assets/images/home/soluoc/1.webp")),
          ),
        ),
        SizedBox(
          width: defaultPadding * 2,
        ),
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Giặt ủi Thịnh Phát",
                  style: GoogleFonts.notoSerif(
                    textStyle: TextStyle(
                        color: blackColor,
                        fontSize: txtSizeLon + 6,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: defaultPadding / 4,
              ),
              Text("Sơ lược về bổn tiệm",
                  style: GoogleFonts.notoSerif(
                    textStyle: TextStyle(
                        color: mainColor,
                        fontSize: txtSizeThuong,
                        fontWeight: FontWeight.normal),
                  )),
              SizedBox(
                height: defaultPadding / 2,
              ),
              Text(
                "Với kinh nghiệm làm việc nhiều năm về ngành nghề giặt ủi cùng với các trang thiết bị máy móc hiện đại và đội ngũ nhân viên chuyên nghiệp. Dịch vụ Giặt ủi Thịnh Phát tự hào là một trong những đối tác của các Cơ sở Spa, Nhà hàng và các Khách sạn lớn nhỏ tại TP. Cà Mau.",
                style: GoogleFonts.notoSerif(
                  height: 1.5,
                  textStyle: TextStyle(
                      color: blackColor,
                      fontSize: txtSizeThuong,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: defaultPadding / 3,
              ),
              IConGioiThieu(
                icon: Icons.money_off,
                noidung: "Chi phí cạnh tranh",
              ),
              SizedBox(
                height: defaultPadding / 3,
              ),
              IConGioiThieu(
                icon: Icons.cabin,
                noidung: "Giao - nhận hàng tận nơi",
              ),
              SizedBox(
                height: defaultPadding / 3,
              ),
              IConGioiThieu(
                icon: Icons.safety_check,
                noidung: "Thiết bị hiện đại",
              ),
              SizedBox(
                height: defaultPadding / 3,
              ),
              IConGioiThieu(
                icon: Icons.check,
                noidung: "Chất lượng dịch vụ tốt",
              ),
              SizedBox(
                height: defaultPadding / 2,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(defaultPadding / 4),
                      ),
                      color: Colors.red,
                    ),
                    child: Center(
                        child: Text(
                      "Hotline : 0949450567",
                      style: GoogleFonts.notoSerif(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: ResponsiveWidget.isDesktop(context)
                                ? txtSizeLon
                                : txtSizeNho,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class IConGioiThieu extends StatelessWidget {
  final String noidung;
  final IconData icon;
  const IConGioiThieu({
    Key key,
    this.noidung,
    this.icon,
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
          noidung,
          style: GoogleFonts.notoSerif(
            textStyle: TextStyle(
                color: blackColor,
                fontWeight: FontWeight.normal,
                fontSize: txtSizeThuong),
          ),
        ),
      ],
    );
  }
}
