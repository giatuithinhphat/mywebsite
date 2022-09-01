import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/pages/components/footer.dart';

import '../../constants/constants.dart';
import '../../helpers/responsive.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Image.asset("assets/images/banner/banner.webp"),
          SizedBox(
            height: defaultPadding * 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Giá trị vượt trội của",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: txtSizeLon * 2,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Text(
                " Thịnh Phát",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: mainColor,
                      fontSize: txtSizeLon * 2,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
          SizedBox(
            height: defaultPadding * 2,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              NoiDung(
                maintitle: "Tiện Lợi",
                linkND: "assets/images/services/tienloi.png",
                title1: "Bổn tiệm tọa lạc tại trung tâm thành phố",
                title2: "Có shipper lấy đồ phục vụ từ 07:00 - 21:00",
                title3: "Đặt dịch vụ dễ dàng & nhanh chóng",
                title4: "Dịch vụ giặt gấp - lấy ngay tốc độ ánh sáng",
              ),
              SizedBox(
                width: defaultPadding,
              ),
              NoiDung(
                maintitle: "Chất Lượng",
                linkND: "assets/images/services/chatluong.png",
                title1: "Nước giặt, nước xả từ thương hiệu uy tín",
                title2: "Kiểm tra, phân loại đồ đặc biệt để xử lý phù hợp",
                title3:
                    "Nhân viên giàu kinh nghiệm, hiểu biết sâu sắc từng chất liệu đồ",
                title4: "Máy giặt, máy sấy được vệ sinh đều đặn",
              ),
              SizedBox(
                width: defaultPadding,
              ),
              NoiDung(
                maintitle: "An Tâm",
                linkND: "assets/images/services/antam.png",
                title1: "Giặt sấy máy riêng cho mỗi khách hàng",
                title2:
                    "Tư vấn dịch vụ phù hợp với từng loại chất liệu đồ giặt",
                title3: "Đồ trắng, đồ màu, đồ da, jeans được giặt riêng",
                title4:
                    "Ký gửi đồ giặt qua đêm, hôm sau lấy vẫn sạch - thơm hết sảy",
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          ),
          Footer(),
        ],
      ),
    );
  }
}

class NoiDung extends StatelessWidget {
  final String linkND;
  final String maintitle, title1, title2, title3, title4;
  const NoiDung({
    Key key,
    this.linkND,
    this.title1,
    this.title2,
    this.title3,
    this.maintitle,
    this.title4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HinhServices(
            linkhinh: linkND,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            maintitle,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: txtSizeLon,
                  fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: defaultPadding / 3,
          ),
          CheckVaNoiDung(
            txt: title1,
          ),
          SizedBox(
            height: defaultPadding / 3,
          ),
          CheckVaNoiDung(
            txt: title2,
          ),
          SizedBox(
            height: defaultPadding / 3,
          ),
          CheckVaNoiDung(
            txt: title3,
          ),
          SizedBox(
            height: defaultPadding / 3,
          ),
          CheckVaNoiDung(
            txt: title4,
          ),
        ],
      ),
    );
  }
}

class CheckVaNoiDung extends StatelessWidget {
  final String txt;
  const CheckVaNoiDung({
    Key key,
    this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check,
          color: Colors.green,
        ),
        SizedBox(
          width: defaultPadding,
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(defaultPadding / 2),
            child: Text(
              txt,
              overflow: TextOverflow.clip,
              maxLines: 4,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: txtSizeThuong,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HinhServices extends StatelessWidget {
  final String linkhinh;
  const HinhServices({
    Key key,
    this.linkhinh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      child: Image.asset(linkhinh),
    );
  }
}
