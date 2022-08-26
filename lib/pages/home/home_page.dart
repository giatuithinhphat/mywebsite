import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/constants/constants.dart';
import 'package:website/helpers/responsive.dart';
import 'package:website/pages/home/components/hinhquangcao.dart';
import 'components/gioithieutiem.dart';
import 'components/hinhanhcuatiem.dart';
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
            height: defaultPadding,
          ),
          HinhAnhCuaTiem(),
          SizedBox(
            height: defaultPadding * 2,
          ),
        ],
      ),
    );
  }
}

class DichVuCuaTiem extends StatelessWidget {
  const DichVuCuaTiem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              dark.withOpacity(.9),
              BlendMode.modulate,
            ),
            child: Image.asset(
              'assets/images/home/banghieu.png',
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: defaultPadding,
              left: defaultPadding,
            ),
            width: double.infinity,
            child: Row(children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Những dịch vụ đặc biệt",
                      style: GoogleFonts.notoSerif(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: txtSizeThuong,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    IconVaDichVuDacBiet(
                      txt: "Dịch vụ giặt riêng / lấy nhanh.",
                      icon: Icons.fast_forward,
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    IconVaDichVuDacBiet(
                      txt: "Giặt hấp Suit / Đầm cưới.",
                      icon: Icons.local_activity,
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    IconVaDichVuDacBiet(
                      txt: "Tẩy vết ố quần áo trắng.",
                      icon: Icons.clean_hands,
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    IconVaDichVuDacBiet(
                      txt: "Giặt tay.",
                      icon: Icons.front_hand,
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    IconVaDichVuDacBiet(
                      txt: "Ủi li quần tây, áo sơ mi.",
                      icon: Icons.iron,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.all(defaultPadding),
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Vệ sinh giày",
                        style: GoogleFonts.notoSerif(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: txtSizeThuong,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: defaultPadding * 2,
                    ),
                    Container(
                      padding: EdgeInsets.all(defaultPadding),
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Vệ sinh rèm cửa, thảm",
                        style: GoogleFonts.notoSerif(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: txtSizeThuong,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ]),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class IconVaDichVuDacBiet extends StatelessWidget {
  final IconData icon;
  final String txt;
  const IconVaDichVuDacBiet({
    Key key,
    this.icon,
    this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      child: Row(
        children: [
          Icon(
            icon,
            color: mainColor,
          ),
          SizedBox(
            width: defaultPadding,
          ),
          Text(
            txt,
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: txtSizeNho + 2,
                  fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }
}
