import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';

class HinhAnhCuaTiem extends StatelessWidget {
  const HinhAnhCuaTiem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Một vài hình ảnh của tiệm",
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: blackColor,
                  fontSize: txtSizeLon,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text("Hình ảnh chụp thực tế tại tiệm giặt ủi",
              style: GoogleFonts.notoSerif(
                textStyle: TextStyle(
                    color: mainColor,
                    fontSize: txtSizeThuong,
                    fontWeight: FontWeight.normal),
              )),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: AspectRatio(
                    aspectRatio: 3 / 2,
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                              "assets/images/home/vuong/ngang.png")),
                    )),
              ),
              SizedBox(
                width: defaultPadding / 2,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      children: [
                        HinhNhoTiem(
                          linkhinh: "assets/images/home/vuong/5.png",
                        ),
                        SizedBox(
                          width: defaultPadding / 2,
                        ),
                        HinhNhoTiem(
                          linkhinh: "assets/images/home/vuong/2.png",
                        ),
                        SizedBox(
                          width: defaultPadding / 2,
                        ),
                        HinhNhoTiem(
                          linkhinh: "assets/images/home/vuong/3.png",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Row(
                      children: [
                        HinhNhoTiem(
                          linkhinh: "assets/images/home/vuong/4.png",
                        ),
                        SizedBox(
                          width: defaultPadding / 2,
                        ),
                        HinhNhoTiem(
                          linkhinh: "assets/images/home/vuong/1.png",
                        ),
                        SizedBox(
                          width: defaultPadding / 2,
                        ),
                        HinhNhoTiem(
                          linkhinh: "assets/images/home/vuong/6.jpeg",
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class HinhNhoTiem extends StatelessWidget {
  final String linkhinh;
  const HinhNhoTiem({
    Key key,
    this.linkhinh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ]),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Image.asset(linkhinh)),
      ),
    );
  }
}