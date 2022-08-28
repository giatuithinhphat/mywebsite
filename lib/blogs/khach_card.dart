import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/constants/constants.dart';
import 'khach.dart';

class KhachCard extends StatelessWidget {
  final Khach khach;
  const KhachCard({
    Key key,
    @required this.khach,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      constraints: BoxConstraints(maxWidth: 300),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
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
                          style: GoogleFonts.notoSerif(
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
                          style: GoogleFonts.notoSerif(
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
            padding: EdgeInsets.all(defaultPadding),
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
              style: GoogleFonts.notoSerif(
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
