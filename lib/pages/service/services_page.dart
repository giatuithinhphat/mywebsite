import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/pages/components/footer.dart';

import '../../constants/constants.dart';
import '../components/quytrinhtieuchuan.dart';
import 'components/hinh_services.dart';
import 'components/noidung.dart';
import 'components/slogan_services.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Image.asset("assets/images/banner/banner.webp"),
          SizedBox(
            height: defaultPadding * 3,
          ),
          SloganServices(),
          SizedBox(
            height: defaultPadding * 2,
          ),
          HinhServices(),
          SizedBox(
            height: defaultPadding / 2,
          ),
          NoiDungServices(),
          SizedBox(
            height: defaultPadding * 3,
          ),
          QuyTrinhTieuChuan(),
          Footer(),
        ],
      ),
    );
  }
}
