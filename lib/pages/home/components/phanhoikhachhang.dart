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
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phản hồi từ khách hàng",
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: blackColor,
                  fontSize: txtSizeLon,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "Nhận xét của các khách hàng đã sử dụng dịch vụ tại bổn tiệm",
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: mainColor,
                  fontSize: txtSizeThuong,
                  fontWeight: FontWeight.normal),
            ),
          ),
          ResponsiveWidget.isDesktop(context)
              ? Column(
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
                            children: List.generate(2,
                                (index) => KhachCard(khach: khachs[index + 2])),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: List.generate(2,
                                (index) => KhachCard(khach: khachs[index + 4])),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: List.generate(2,
                                (index) => KhachCard(khach: khachs[index + 6])),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Column(
                  children: List.generate(khachs.length,
                      (index) => KhachCard(khach: khachs[index]))),
        ],
      ),
    );
  }
}