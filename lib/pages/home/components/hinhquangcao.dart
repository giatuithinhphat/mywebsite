import 'package:flutter/material.dart';
import 'package:website/pages/home/components/hinh.dart';

import '../../../constants/constants.dart';

class HinhQuangCao extends StatelessWidget {
  const HinhQuangCao({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
