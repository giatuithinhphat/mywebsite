import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/blogs/khach_cmt.dart';
import 'package:website/blogs/khach_cmt_card.dart';
import 'package:website/constants/constants.dart';
import 'package:provider/provider.dart';

class PhanHoiKhachHang extends StatelessWidget {
  const PhanHoiKhachHang({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final khachs = Provider.of<Khachs>(context).khachs;
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
          ListView.builder(
            itemCount: khachs.length,
            itemBuilder: (context, index) => ChangeNotifierProvider.value(
              value: khachs[index],
              child: KhachCard(),
            ),
          ),
        ],
      ),
    );
  }
}
