import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/helpers/responsive.dart';

import '../../constants/constants.dart';

class QuyTrinhTieuChuan extends StatelessWidget {
  const QuyTrinhTieuChuan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      color: mainColor,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: defaultPadding * 2,
          ),
          Text(
            "Quy Trình Giặt Sấy Tiêu Chuẩn",
            textAlign: !ResponsiveWidget.isMobile(context)
                ? TextAlign.start
                : TextAlign.center,
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
              color: Colors.black,
              fontSize: !ResponsiveWidget.isMobile(context)
                  ? txtSizeLon * 2
                  : txtSizeLon * 1.5,
              fontWeight: FontWeight.w900,
            )),
          ),
          SizedBox(
            height: defaultPadding * 2,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: defaultPadding,
                ),
                CotWidget(
                  num: "1",
                  linkhinh: "assets/images/services/ship.jpeg",
                  title: "Tư Vấn - Nhận Hàng Tận Nơi Theo Yêu Cầu",
                  qt1: "Khách hàng chọn gói giặt sấy phù hợp",
                  qt2: "Nhân viên liên hệ tư vấn và hẹn lịch giao nhận",
                  qt3: "Shipper đến tận nơi nhận đồ vào giờ đã hẹn",
                ),
                SizedBox(
                  width: defaultPadding * 3,
                ),
                CotWidget(
                  num: "2",
                  linkhinh: "assets/images/services/nhan.jpeg",
                  title: "Phân Loại, Kiểm Tra Điểm Dơ, Tẩy Điểm Dơ",
                  qt1:
                      "Gắn tag định danh, ngày nhận, hẹn giao, ghi chú yêu cầu của khách",
                  qt2: "Phân loại đồ giặt theo màu sắc, chất liệu, khối lượng",
                  qt3: "Xử lí điểm ố, điểm dơ trước khi đưa vào giặt",
                ),
                SizedBox(
                  width: defaultPadding * 3,
                ),
                CotWidget(
                  num: "3.1",
                  linkhinh: "assets/images/services/giat.jpeg",
                  title: "Giặt và Sấy Khô",
                  qt1:
                      "Thiết bị Giặt - Sấy hiện đại, vệ sinh theo chu kì cố định",
                  qt2:
                      "Nước giặt - xả nhập từ những nguồn uy tín, công nghệ hiện đại",
                  qt3: "Tùy chọn chế độ giặt phù hợp những loại đồ khác nhau",
                ),
                SizedBox(
                  width: defaultPadding * 3,
                ),
                CotWidget(
                  num: "3.2",
                  linkhinh: "assets/images/services/giattay.jpeg",
                  title: "Giặt Tay Theo Yêu Cầu và Sấy Khô",
                  qt1: "Khách hàng chọn gói giặt sấy phù hợp",
                  qt2: "Nhân viên liên hệ tư vấn và hẹn lịch giao nhận",
                  qt3: "Shipper đến tận nơi nhận đồ vào giờ đã hẹn",
                ),
                SizedBox(
                  width: defaultPadding * 3,
                ),
                CotWidget(
                  num: "4",
                  linkhinh: "assets/images/services/ui.jpeg",
                  title: "Ủi Theo Yêu Cầu",
                  qt1: "Khách hàng chọn gói giặt sấy phù hợp",
                  qt2: "Nhân viên liên hệ tư vấn và hẹn lịch giao nhận",
                  qt3: "Shipper đến tận nơi nhận đồ vào giờ đã hẹn",
                ),
                SizedBox(
                  width: defaultPadding * 3,
                ),
                CotWidget(
                  num: "5",
                  linkhinh: "assets/images/services/xep.jpeg",
                  title: "Tư Vấn - Nhận Hàng Tận Nơi Theo Yêu Cầu",
                  qt1: "Khách hàng chọn gói giặt sấy phù hợp",
                  qt2: "Nhân viên liên hệ tư vấn và hẹn lịch giao nhận",
                  qt3: "Shipper đến tận nơi nhận đồ vào giờ đã hẹn",
                ),
                SizedBox(
                  width: defaultPadding,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CotWidget extends StatelessWidget {
  final String num, linkhinh, title, qt1, qt2, qt3;
  const CotWidget({
    Key key,
    this.num,
    this.title,
    this.qt1,
    this.qt2,
    this.qt3,
    this.linkhinh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 320),
      padding: EdgeInsets.all(defaultPadding / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(defaultPadding * 2),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 9,
            offset: Offset(0, 2),
          )
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.all(Radius.circular(defaultPadding * 1.5)),
            child: Image.asset(linkhinh),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: [
              Container(
                height: defaultPadding * 2.5,
                width: defaultPadding * 2.5,
                decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius:
                        BorderRadius.all(Radius.circular(defaultPadding * 2))),
                child: Center(
                  child: Text(
                    num,
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: txtSizeThuong,
                      fontWeight: FontWeight.w700,
                    )),
                  ),
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Flexible(
                child: Text(
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    color: Colors.black,
                    height: 1.2,
                    fontSize: txtSizeThuong,
                    fontWeight: FontWeight.w700,
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          MoTaQuyTrinh(txt: qt1),
          SizedBox(
            height: defaultPadding / 2,
          ),
          MoTaQuyTrinh(
            txt: qt2,
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          MoTaQuyTrinh(
            txt: qt3,
          ),
        ],
      ),
    );
  }
}

class MoTaQuyTrinh extends StatelessWidget {
  final String txt;
  const MoTaQuyTrinh({
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
          width: defaultPadding / 3,
        ),
        Flexible(
          child: Text(
            txt,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.justify,
            style: GoogleFonts.roboto(
              height: 1.5,
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: txtSizeNho,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }
}
