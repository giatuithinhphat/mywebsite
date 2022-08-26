import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';
import '../constants/controllers.dart';
import 'custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const VerticalMenuItem({Key key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName)
                ? lightgreyColor.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  child: Container(
                    width: 3,
                    height: 72,
                    color: blackColor,
                  ),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                ),
                Expanded(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: menuController.returnIconFor(itemName),
                    ),
                    if (!menuController.isActive(itemName))
                      Flexible(
                          child: CustomText(
                        text: itemName,
                        color: menuController.isHovering(itemName)
                            ? blackColor
                            : lightgreyColor,
                      ))
                    else
                      Flexible(
                          child: CustomText(
                        text: itemName,
                        color: blackColor,
                        size: 18,
                        weight: FontWeight.bold,
                      ))
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
