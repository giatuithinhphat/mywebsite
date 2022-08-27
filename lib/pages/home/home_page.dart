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
        ],
      ),
    );
  }
}
