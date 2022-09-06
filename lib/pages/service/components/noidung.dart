import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';

class NoiDungServices extends StatelessWidget {
  const NoiDungServices({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NoiDungNgang(
          txtLeft: "Bổn tiệm tọa lạc tại trung tâm thành phố",
          txtMid: "Nước giặt, nước xả từ thương hiệu uy tín",
          txtRight: "Giặt sấy máy riêng cho mỗi khách hàng",
        ),
        NoiDungNgang(
          txtLeft: "Có shipper lấy đồ phục vụ từ 07:00 - 21:00",
          txtMid: "Kiểm tra, phân loại đồ đặc biệt để xử lý phù hợp",
          txtRight: "Tư vấn dịch vụ phù hợp với từng loại chất liệu đồ giặt",
        ),
        NoiDungNgang(
          txtLeft: "Đặt dịch vụ dễ dàng & nhanh chóng",
          txtMid:
              "Nhân viên giàu kinh nghiệm, hiểu biết sâu sắc từng chất liệu đồ",
          txtRight: "Đồ trắng, đồ màu, đồ da, jeans được giặt riêng",
        ),
        NoiDungNgang(
          txtLeft: "Dịch vụ giặt gấp - lấy ngay tốc độ ánh sáng",
          txtMid: "Máy giặt, máy sấy được vệ sinh đều đặn",
          txtRight:
              "Ký gửi đồ giặt qua đêm, hôm sau lấy vẫn sạch - thơm hết sảy",
        ),
      ],
    );
  }
}

class NoiDungNgang extends StatelessWidget {
  final String txtLeft, txtMid, txtRight;
  const NoiDungNgang({
    Key key,
    this.txtLeft,
    this.txtMid,
    this.txtRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(),
        ),
        CheckVaNoiDung(
          txt: txtLeft,
        ),
        CheckVaNoiDung(
          txt: txtMid,
        ),
        CheckVaNoiDung(
          txt: txtRight,
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
      ],
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
    return Expanded(
      flex: 2,
      child: Row(
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
                  height: 1.5,
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: txtSizeThuong,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
