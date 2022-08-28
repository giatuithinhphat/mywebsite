import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/helpers/responsive.dart';

import '../../../constants/constants.dart';

class DichVuCuaTiem extends StatelessWidget {
  const DichVuCuaTiem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isMobile(context)
        ? Stack(
            alignment: Alignment.center,
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  dark.withOpacity(.9),
                  BlendMode.modulate,
                ),
                child: Image.asset(
                  "assets/images/home/vuong/dvdacbiet.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(defaultPadding / 2),
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
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconVaDichVuDacBiet(
                            txt: "Giặt tay.",
                            icon: Icons.front_hand,
                          ),
                          SizedBox(
                            height: defaultPadding,
                          ),
                          IconVaDichVuDacBiet(
                            txt: "Vệ sinh giày - dép.",
                            icon: Icons.wash,
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
                            txt: "Tẩy vết ố quần áo trắng.",
                            icon: Icons.clean_hands,
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
                            txt: "Dịch vụ giặt riêng / lấy nhanh.",
                            icon: Icons.fast_forward,
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(),
                      Icon(Icons.star, color: mainColor, size: 18),
                      Icon(Icons.star, color: mainColor, size: 18),
                      Icon(Icons.star, color: mainColor, size: 18),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    "Sắp ra mắt dịch vụ Giặt Hấp",
                    style: GoogleFonts.notoSerif(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: txtSizeThuong - 2,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Nón Bảo hiểm/Đồ bảo hộ Motor",
                    style: GoogleFonts.notoSerif(
                      textStyle: TextStyle(
                          color: mainColor,
                          fontSize: txtSizeThuong + 2,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Icon(Icons.star, color: mainColor, size: 18),
                      Icon(Icons.star, color: mainColor, size: 18),
                      Icon(Icons.star, color: mainColor, size: 18),
                      Spacer(),
                    ],
                  ),
                ],
              ),
            ],
          )
        : Stack(
            alignment: Alignment.center,
            children: [
              ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    dark.withOpacity(.9),
                    BlendMode.modulate,
                  ),
                  child: Image.asset(
                    "assets/images/home/banghieu.png",
                    fit: BoxFit.cover,
                  )),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                              ResponsiveWidget.isDesktop(context)
                                  ? defaultPadding
                                  : defaultPadding / 2),
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(.7),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Đặc Biệt",
                              style: GoogleFonts.notoSerif(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        ResponsiveWidget.isDesktop(context)
                                            ? txtSizeLon
                                            : txtSizeThuong,
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
                                height: ResponsiveWidget.isDesktop(context)
                                    ? defaultPadding
                                    : defaultPadding / 2),
                            IconVaDichVuDacBiet(
                              txt: "Giặt hấp Suit / Đầm cưới.",
                              icon: Icons.local_activity,
                            ),
                            SizedBox(
                                height: ResponsiveWidget.isDesktop(context)
                                    ? defaultPadding
                                    : defaultPadding / 2),
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
                                height: ResponsiveWidget.isDesktop(context)
                                    ? defaultPadding
                                    : defaultPadding / 2),
                            IconVaDichVuDacBiet(
                              txt: "Ủi li quần tây, áo sơ mi.",
                              icon: Icons.iron,
                            ),
                            SizedBox(
                                height: ResponsiveWidget.isDesktop(context)
                                    ? defaultPadding
                                    : defaultPadding / 2),
                            IconVaDichVuDacBiet(
                              txt: "Vệ sinh giày - dép.",
                              icon: Icons.wash,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                        height: ResponsiveWidget.isDesktop(context)
                            ? defaultPadding
                            : defaultPadding / 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(children: [
                            Icon(
                              Icons.star,
                              color: mainColor,
                              size:
                                  ResponsiveWidget.isDesktop(context) ? 32 : 20,
                            ),
                            Icon(
                              Icons.star,
                              color: mainColor,
                              size:
                                  ResponsiveWidget.isDesktop(context) ? 32 : 20,
                            ),
                            Icon(
                              Icons.star,
                              color: mainColor,
                              size:
                                  ResponsiveWidget.isDesktop(context) ? 32 : 20,
                            ),
                            SizedBox(
                              width: ResponsiveWidget.isDesktop(context)
                                  ? defaultPadding
                                  : defaultPadding / 2,
                            ),
                            Text(
                              "Sắp ra mắt dịch vụ Giặt Hấp Nón Bảo hiểm/Đồ bảo hộ Motor",
                              style: GoogleFonts.notoSerif(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        ResponsiveWidget.isDesktop(context)
                                            ? txtSizeLon
                                            : txtSizeThuong,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: ResponsiveWidget.isDesktop(context)
                                  ? defaultPadding
                                  : defaultPadding / 2,
                            ),
                            Icon(
                              Icons.star,
                              color: mainColor,
                              size:
                                  ResponsiveWidget.isDesktop(context) ? 32 : 20,
                            ),
                            Icon(
                              Icons.star,
                              color: mainColor,
                              size:
                                  ResponsiveWidget.isDesktop(context) ? 32 : 20,
                            ),
                            Icon(
                              Icons.star,
                              color: mainColor,
                              size:
                                  ResponsiveWidget.isDesktop(context) ? 32 : 20,
                            ),
                          ]),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
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
            width: ResponsiveWidget.isDesktop(context)
                ? defaultPadding
                : defaultPadding / 3,
          ),
          Text(
            txt,
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveWidget.isDesktop(context)
                      ? txtSizeThuong
                      : txtSizeNho,
                  fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }
}
