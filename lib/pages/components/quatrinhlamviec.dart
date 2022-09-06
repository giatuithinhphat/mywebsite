import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/helpers/responsive.dart';

import '../../../constants/constants.dart';

class QuaTrinhLamViec extends StatelessWidget {
  const QuaTrinhLamViec({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isDesktop(context)
              ? defaultPadding
              : ResponsiveWidget.isTablet(context)
                  ? defaultPadding
                  : defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Quy trình làm việc",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: blackColor,
                  fontSize: txtSizeLon * 2,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: defaultPadding / 4,
          ),
          Text(
            "Quy trình sử dụng dịch vụ giặt ủi đơn giản",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: mainColor,
                  fontSize: txtSizeLon,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: defaultPadding * 2,
          ),
          ResponsiveWidget.isDesktop(context)
              ? DesktopShow()
              : ResponsiveWidget.isTablet(context)
                  ? DesktopShow()
                  : MobileTablet(),
        ],
      ),
    );
  }
}

class MobileTablet extends StatelessWidget {
  const MobileTablet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuyTrinhDoc(
          title: "Nhận quần áo bẩn",
          description: "Nhận thông tin khách hàng, nhận quần áo bẩn.",
          linkhinh: "assets/images/quatrinhlamviec/ro.webp",
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        QuyTrinhDoc(
          title: "Giặt quần áo",
          description:
              "Bằng các hóa chất chuyên nghiệp, quần áo sạch vi khuẩn và bền màu.",
          linkhinh: "assets/images/quatrinhlamviec/maygiat.webp",
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        QuyTrinhDoc(
          title: "Sấy và xếp gọn",
          description:
              "Quần áo sau khi được giặt sạch, sẽ qua giai đoạn sấy thơm và xếp gọn.",
          linkhinh: "assets/images/quatrinhlamviec/aosomi.webp",
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        QuyTrinhDoc(
          title: "Nhận hàng",
          description:
              "Khách hàng nhận hàng tại tiệm hoặc sử dụng dịch vụ ship tận nơi.",
          linkhinh: "assets/images/quatrinhlamviec/xetai.webp",
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
      children: [
        QuyTrinhNgang(
          title: "Nhận quần áo bẩn",
          description: "Nhận thông tin khách hàng, nhận quần áo bẩn.",
          linkhinh: "assets/images/quatrinhlamviec/ro.webp",
        ),
        SizedBox(
          width: defaultPadding,
        ),
        QuyTrinhNgang(
          title: "Giặt quần áo",
          description:
              "Bằng các hóa chất chuyên nghiệp, quần áo sạch vi khuẩn và bền màu.",
          linkhinh: "assets/images/quatrinhlamviec/maygiat.webp",
        ),
        SizedBox(
          width: defaultPadding,
        ),
        QuyTrinhNgang(
          title: "Sấy và xếp gọn",
          description:
              "Quần áo sau khi được giặt sạch, sẽ qua giai đoạn sấy thơm và xếp gọn.",
          linkhinh: "assets/images/quatrinhlamviec/aosomi.webp",
        ),
        SizedBox(
          width: defaultPadding,
        ),
        QuyTrinhNgang(
          title: "Nhận hàng",
          description:
              "Khách hàng nhận hàng tại tiệm hoặc sử dụng dịch vụ ship tận nơi.",
          linkhinh: "assets/images/quatrinhlamviec/xetai.webp",
        ),
      ],
    );
  }
}

class QuyTrinhNgang extends StatelessWidget {
  final String linkhinh;
  final String title;
  final String description;
  const QuyTrinhNgang({
    Key key,
    this.linkhinh,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            linkhinh,
            height: 200,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            title,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: blackColor,
                  fontSize: txtSizeLon,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              height: 1.5,
              textStyle: TextStyle(
                  color: blackColor,
                  fontSize: txtSizeThuong,
                  fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }
}

class QuyTrinhDoc extends StatelessWidget {
  final String linkhinh, title, description;
  const QuyTrinhDoc({Key key, this.linkhinh, this.title, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            linkhinh,
          ),
        ),
        SizedBox(
          width: ResponsiveWidget.isTablet(context)
              ? defaultPadding * 2
              : defaultPadding,
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: blackColor,
                      fontSize: txtSizeLon,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                description,
                style: GoogleFonts.roboto(
                  height: 1.5,
                  textStyle: TextStyle(
                      color: blackColor,
                      fontSize: txtSizeThuong,
                      fontWeight: FontWeight.normal),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
