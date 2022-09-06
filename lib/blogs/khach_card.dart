import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/constants/constants.dart';
import 'package:website/helpers/responsive.dart';
import 'khach.dart';

class KhachCard extends StatelessWidget {
  final Khach khach;
  const KhachCard({
    Key key,
    @required this.khach,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !ResponsiveWidget.isDesktop(context)
        ? DeskTopShow(khach: khach)
        : MobileTabletShow(khach: khach);
  }
}

class MobileTabletShow extends StatelessWidget {
  const MobileTabletShow({
    Key key,
    @required this.khach,
  }) : super(key: key);

  final Khach khach;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding / 2),
      constraints: BoxConstraints(maxWidth: 300),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: !ResponsiveWidget.isMobile(context)
                    ? defaultPadding / 2
                    : defaultPadding / 4),
            constraints: BoxConstraints(maxHeight: 100),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    child: Image.asset(
                      khach.image,
                      height: MediaQuery.of(context).size.width / 20,
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                Flexible(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          khach.ten,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: txtSizeThuong,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          khach.diachi,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Colors.red,
                                fontSize: txtSizeNho - 3,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: defaultPadding / 3,
          ),
          // Comments
          Container(
            constraints: BoxConstraints(minHeight: 100),
            padding: EdgeInsets.all(ResponsiveWidget.isDesktop(context)
                ? defaultPadding
                : ResponsiveWidget.isTablet(context)
                    ? defaultPadding / 2
                    : 5),
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Text(
              khach.nhanxet,
              textAlign: TextAlign.justify,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: blackColor,
                  height: 1.5,
                  fontSize: txtSizeNho - 2,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DeskTopShow extends StatelessWidget {
  const DeskTopShow({
    Key key,
    @required this.khach,
  }) : super(key: key);

  final Khach khach;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultPadding / 2),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1.0, color: Color(0xFFDFDFDF)),
      )),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // Avatyar
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  child: Image.asset(
                    khach.image,
                    height: 80,
                  ),
                ),
                SizedBox(
                  height: defaultPadding / 2,
                ),
                // Ten
                Text(
                  khach.ten,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: ResponsiveWidget.isMobile(context)
                            ? 12
                            : txtSizeNho,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: defaultPadding / 4,
                ),
                // Diachi
                Text(
                  khach.diachi,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Colors.red,
                        fontSize: ResponsiveWidget.isMobile(context)
                            ? 12
                            : txtSizeNho,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: ResponsiveWidget.isMobile(context)
                ? defaultPadding / 2
                : defaultPadding,
          ),
          Expanded(
            flex: 5,
            child: Container(
                padding: EdgeInsets.all(
                  ResponsiveWidget.isMobile(context)
                      ? defaultPadding / 2
                      : defaultPadding,
                ),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(defaultPadding),
                      bottomLeft: Radius.circular(defaultPadding),
                      bottomRight: Radius.circular(defaultPadding),
                    )),
                child: Text(
                  khach.nhanxet,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: ResponsiveWidget.isMobile(context)
                            ? 12
                            : txtSizeNho,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
