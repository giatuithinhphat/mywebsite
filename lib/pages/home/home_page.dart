import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/constants/constants.dart';
import 'package:website/pages/home/components/hinhquangcao.dart';
import 'components/dichvucuatiem.dart';
import 'components/gioithieutiem.dart';
import 'components/hinhanhcuatiem.dart';
import 'components/phanhoikhachhang.dart';
import 'components/quatrinhlamviec.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/home/ngang/banner.jpg"),
          SizedBox(
            height: defaultPadding,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              "Quy trình và công nghệ hiện đại đảm bảo thời gian giao nhận hàng",
              style: GoogleFonts.notoSerif(
                textStyle: TextStyle(
                    color: blackColor,
                    fontSize: txtSizeLon,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          HinhQuangCao(),
          SizedBox(
            height: defaultPadding * 2,
          ),
          GioiThieuTiem(),
          SizedBox(
            height: defaultPadding * 2,
          ),
          QuaTrinhLamViec(),
          SizedBox(
            height: defaultPadding * 2,
          ),
          DichVuCuaTiem(),
          SizedBox(
            height: defaultPadding * 2,
          ),
          HinhAnhCuaTiem(),
          SizedBox(
            height: defaultPadding * 2,
          ),
          PhanHoiKhachHang(),
          SizedBox(
            height: defaultPadding * 2,
          ),
          Footer(),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.black,
      padding: EdgeInsets.only(
        top: defaultPadding,
        left: defaultPadding,
        right: defaultPadding,
      ),
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Giặt ủi Thịnh Phát",
              style: GoogleFonts.notoSerif(
                textStyle: TextStyle(
                    color: mainColor,
                    fontSize: txtSizeThuong,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Text(
                  "17b Nguyễn Ngọc Sanh, K3, P6, Tp.CM",
                  style: GoogleFonts.notoSerif(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: txtSizeThuong,
                        fontWeight: FontWeight.normal),
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
                  color: Colors.white,
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Text(
                  "0949.450.567",
                  style: GoogleFonts.notoSerif(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: txtSizeThuong,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}
