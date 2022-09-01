import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/constants/constants.dart';
import 'package:website/helpers/responsive.dart';
import '../components/footer.dart';
import '../components/dichvucuatiem.dart';
import '../components/gioithieutiem.dart';
import '../components/hinhanhcuatiem.dart';
import '../components/hinhquangcao.dart';
import '../components/phanhoikhachhang.dart';
import '../components/quatrinhlamviec.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Banner
          Image.asset("assets/images/banner/banner.webp"),
          SizedBox(
            height: ResponsiveWidget.isDesktop(context)
                ? defaultPadding
                : ResponsiveWidget.isTablet(context)
                    ? defaultPadding / 2
                    : defaultPadding / 3,
          ),
          // Slogan
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: ResponsiveWidget.isDesktop(context)
                    ? defaultPadding
                    : ResponsiveWidget.isTablet(context)
                        ? defaultPadding / 2
                        : defaultPadding / 3),
            child: Text(
              "Quy trình và công nghệ hiện đại đảm bảo thời gian giao nhận hàng",
              textAlign: TextAlign.center,
              maxLines: ResponsiveWidget.isDesktop(context) ? 1 : 2,
              overflow: TextOverflow.visible,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: blackColor,
                    fontSize: !ResponsiveWidget.isMobile(context)
                        ? txtSizeLon + 6
                        : txtSizeThuong,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveWidget.isDesktop(context)
                ? defaultPadding
                : ResponsiveWidget.isTablet(context)
                    ? defaultPadding / 2
                    : defaultPadding / 3,
          ),
          HinhQuangCao(),
          SizedBox(
            height: ResponsiveWidget.isDesktop(context)
                ? defaultPadding
                : ResponsiveWidget.isTablet(context)
                    ? defaultPadding / 2
                    : defaultPadding / 3,
          ),
          GioiThieuTiem(),
          SizedBox(
            height: ResponsiveWidget.isMobile(context)
                ? defaultPadding / 2
                : defaultPadding * 2,
          ),
          QuaTrinhLamViec(),
          SizedBox(
            height: ResponsiveWidget.isMobile(context)
                ? defaultPadding / 2
                : defaultPadding * 2,
          ),
          DichVuCuaTiem(),
          SizedBox(
            height: ResponsiveWidget.isMobile(context)
                ? defaultPadding / 2
                : defaultPadding * 2,
          ),
          HinhAnhCuaTiem(),
          SizedBox(
            height: ResponsiveWidget.isMobile(context)
                ? defaultPadding / 2
                : defaultPadding * 2,
          ),
          PhanHoiKhachHang(),
          SizedBox(
            height: ResponsiveWidget.isDesktop(context)
                ? defaultPadding
                : ResponsiveWidget.isTablet(context)
                    ? defaultPadding / 2
                    : 0,
          ),
          Footer(),
        ],
      ),
    );
  }
}
