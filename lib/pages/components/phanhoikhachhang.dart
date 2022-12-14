import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/blogs/khach.dart';
import 'package:website/blogs/khach_card.dart';
import 'package:website/constants/constants.dart';
import 'package:website/helpers/responsive.dart';

class PhanHoiKhachHang extends StatelessWidget {
  const PhanHoiKhachHang({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              "Phản hồi từ khách hàng",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: blackColor,
                    fontSize: txtSizeLon * 2,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          SizedBox(
            height: defaultPadding / 4,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              "Nhận xét của các khách hàng đã sử dụng dịch vụ tại bổn tiệm",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: mainColor,
                    fontSize: txtSizeLon,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          ResponsiveWidget.isDesktop(context)
              ? DesktopShow()
              : ResponsiveWidget.isTablet(context)
                  ? TabletShow()
                  : MobileShow(),
        ],
      ),
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
        children: List.generate(
            khachs.length, (index) => KhachCard(khach: khachs[index])));
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
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: List.generate(
                    2, (index) => KhachCard(khach: khachs[index])),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: List.generate(
                    2, (index) => KhachCard(khach: khachs[index + 2])),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: List.generate(
                    2, (index) => KhachCard(khach: khachs[index + 4])),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: List.generate(
                    2, (index) => KhachCard(khach: khachs[index + 6])),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TabletShow extends StatelessWidget {
  const TabletShow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: List.generate(
                    2, (index) => KhachCard(khach: khachs[index])),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: List.generate(
                    2, (index) => KhachCard(khach: khachs[index + 2])),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: List.generate(
                    2, (index) => KhachCard(khach: khachs[index + 4])),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: List.generate(
                    2, (index) => KhachCard(khach: khachs[index + 6])),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
