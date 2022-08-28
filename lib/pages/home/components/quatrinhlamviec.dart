import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';

class QuaTrinhLamViecNgang extends StatelessWidget {
  const QuaTrinhLamViecNgang({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Quy trình làm việc",
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: blackColor,
                  fontSize: txtSizeLon,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: defaultPadding / 4,
          ),
          Text(
            "Quy trình sử dụng dịch vụ giặt ủi đơn giản",
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: mainColor,
                  fontSize: txtSizeThuong,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          Row(
            children: [
              QuyTrinhNgang(
                title: "Nhận quần áo bẩn",
                description: "Nhận thông tin khách hàng, nhận quần áo bẩn.",
                linkhinh: "assets/images/home/ngang/ro.png",
              ),
              SizedBox(
                width: defaultPadding,
              ),
              QuyTrinhNgang(
                title: "Giặt quần áo",
                description:
                    "Bằng các hóa chất chuyên nghiệp, quần áo sạch vi khuẩn và bền màu.",
                linkhinh: "assets/images/home/ngang/maygiat.png",
              ),
              SizedBox(
                width: defaultPadding,
              ),
              QuyTrinhNgang(
                title: "Sấy và xếp gọn",
                description:
                    "Quần áo sau khi được giặt sạch, sẽ qua giai đoạn sấy thơm và xếp gọn.",
                linkhinh: "assets/images/home/ngang/aosomi.png",
              ),
              SizedBox(
                width: defaultPadding,
              ),
              QuyTrinhNgang(
                title: "Nhận hàng",
                description:
                    "Khách hàng nhận hàng tại tiệm hoặc sử dụng dịch vụ ship tận nơi.",
                linkhinh: "assets/images/home/ngang/xetai.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class QuaTrinhLamViecDoc extends StatelessWidget {
  const QuaTrinhLamViecDoc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Quy trình làm việc",
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: blackColor,
                  fontSize: txtSizeLon,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: defaultPadding / 4,
          ),
          Text(
            "Quy trình sử dụng dịch vụ giặt ủi đơn giản",
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: mainColor,
                  fontSize: txtSizeThuong,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          QuyTrinhDoc(
            title: "Nhận quần áo bẩn",
            description: "Nhận thông tin khách hàng, nhận quần áo bẩn.",
            linkhinh: "assets/images/home/ngang/ro.png",
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          QuyTrinhDoc(
            title: "Giặt quần áo",
            description:
                "Bằng các hóa chất chuyên nghiệp, quần áo sạch vi khuẩn và bền màu.",
            linkhinh: "assets/images/home/ngang/maygiat.png",
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          QuyTrinhDoc(
            title: "Sấy và xếp gọn",
            description:
                "Quần áo sau khi được giặt sạch, sẽ qua giai đoạn sấy thơm và xếp gọn.",
            linkhinh: "assets/images/home/ngang/aosomi.png",
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          QuyTrinhDoc(
            title: "Nhận hàng",
            description:
                "Khách hàng nhận hàng tại tiệm hoặc sử dụng dịch vụ ship tận nơi.",
            linkhinh: "assets/images/home/ngang/xetai.png",
          ),
        ],
      ),
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
            height: defaultPadding / 2,
          ),
          Text(
            title,
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: blackColor,
                  fontSize: txtSizeThuong,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: blackColor,
                  fontSize: txtSizeNho,
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
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            linkhinh,
          ),
        ),
        SizedBox(
          width: defaultPadding,
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.notoSerif(
                  textStyle: TextStyle(
                      color: blackColor,
                      fontSize: txtSizeThuong,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                description,
                style: GoogleFonts.notoSerif(
                  textStyle: TextStyle(
                      color: blackColor,
                      fontSize: txtSizeNho,
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
