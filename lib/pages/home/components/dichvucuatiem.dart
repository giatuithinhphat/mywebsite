import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';

class DichVuCuaTiem extends StatelessWidget {
  const DichVuCuaTiem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.center,
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
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(.7),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Đặc Biệt",
                        style: GoogleFonts.notoSerif(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: txtSizeLon,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        txt: "Giặt tay.",
                        icon: Icons.front_hand,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconVaDichVuDacBiet(
                        txt: "Tẩy vết ố quần áo trắng.",
                        icon: Icons.clean_hands,
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      IconVaDichVuDacBiet(
                        txt: "Ủi li quần tây, áo sơ mi.",
                        icon: Icons.iron,
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      IconVaDichVuDacBiet(
                        txt: "Vệ sinh giày - dép.",
                        icon: Icons.wash,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: defaultPadding * 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(children: [
                      Icon(
                        Icons.star,
                        color: mainColor,
                        size: 32,
                      ),
                      Icon(
                        Icons.star,
                        color: mainColor,
                        size: 32,
                      ),
                      Icon(
                        Icons.star,
                        color: mainColor,
                        size: 32,
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        "Sắp ra mắt dịch vụ Giặt Hấp Đồ Bảo Hộ Motor",
                        style: GoogleFonts.notoSerif(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: txtSizeLon,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Icon(
                        Icons.star,
                        color: mainColor,
                        size: 32,
                      ),
                      Icon(
                        Icons.star,
                        color: mainColor,
                        size: 32,
                      ),
                      Icon(
                        Icons.star,
                        color: mainColor,
                        size: 32,
                      ),
                    ]),
                  )
                ],
              )
            ],
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
                  fontSize: txtSizeThuong,
                  fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }
}
