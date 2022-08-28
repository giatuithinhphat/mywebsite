import 'package:flutter/material.dart';
import 'package:website/helpers/responsive.dart';
import 'package:website/pages/home/components/hinh.dart';

import '../../../constants/constants.dart';

class HinhQuangCao extends StatelessWidget {
  const HinhQuangCao({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isDesktop(context)
        ? Container(
            constraints: BoxConstraints(maxHeight: 400),
            child: Row(
              children: [
                SizedBox(
                  width: defaultPadding,
                ),
                Hinh(
                  doflex: 1,
                  linkhinh: "assets/images/home/ngang/giatsach.png",
                  titlel: "Giặt sạch",
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Hinh(
                  doflex: 1,
                  linkhinh: "assets/images/home/ngang/saythom.png",
                  titlel: "Sấy thơm",
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Hinh(
                  doflex: 1,
                  linkhinh: "assets/images/home/ngang/xepgon.png",
                  titlel: "Xếp gọn",
                ),
                SizedBox(
                  width: defaultPadding,
                ),
              ],
            ),
          )
        : Container(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: defaultPadding,
                ),
                Hinh(
                  doflex: 1,
                  linkhinh: "assets/images/home/ngang/giatsach.png",
                  titlel: "Giặt sạch",
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Hinh(
                  doflex: 1,
                  linkhinh: "assets/images/home/ngang/saythom.png",
                  titlel: "Sấy thơm",
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Hinh(
                  doflex: 1,
                  linkhinh: "assets/images/home/ngang/xepgon.png",
                  titlel: "Xếp gọn",
                ),
              ],
            ),
          );
  }
}
