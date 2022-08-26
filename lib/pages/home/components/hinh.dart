import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class Hinh extends StatelessWidget {
  final String linkhinh;
  final int doflex;
  final String titlel;
  const Hinh({
    Key key,
    this.linkhinh,
    this.doflex,
    this.titlel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: doflex,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
              child: Image.asset(linkhinh),
            ),
          ),
          Positioned.fill(
              bottom: defaultPadding / 3,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding / 2),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(.8),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Text(
                      titlel,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto Slab',
                          fontSize: txtSizeThuong,
                          fontWeight: FontWeight.bold),
                    )),
              )),
        ],
      ),
    );
  }
}
