import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:website/constants/constants.dart';
import 'package:website/constants/controllers.dart';
import 'package:website/helpers/responsive.dart';
import 'package:website/pages/home/home_page.dart';
import 'package:website/routing/routes.dart';
import 'package:website/widgets/custom_text.dart';
import 'package:website/widgets/side_menu_items.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: whiteColor,
      child: ListView(children: [
        if (ResponsiveWidget.isMobile(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: SvgPicture.asset(
                  "assets/logo/jlogo.svg",
                  width: 40,
                ),
              ),
              Flexible(
                  child: CustomText(
                text: "Dash",
                size: 20,
                weight: FontWeight.bold,
                color: lightgreyColor,
              )),
            ],
          ),
        Divider(
          color: lightgreyColor.withOpacity(.1),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: menuItems
              .map((itemName) => SideMenuItem(
                    itemName: itemName,
                    onTap: () {
                      navigationController.navigateTo(itemName);
                    },
                  ))
              .toList(),
        ),
      ]),
    );
  }
}
