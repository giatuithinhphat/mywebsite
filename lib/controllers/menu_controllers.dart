import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/constants/constants.dart';

import '../routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = HomePageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value == itemName;
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case HomePageRoute:
        return _customIcon(CupertinoIcons.home, itemName);
      case AboutPageRoute:
        return _customIcon(CupertinoIcons.group_solid, itemName);
      case ServicesPageRoute:
        return _customIcon(CupertinoIcons.info, itemName);
      case LocalGuidePageRoute:
        return _customIcon(CupertinoIcons.pin_slash, itemName);
      default:
        return _customIcon(CupertinoIcons.home, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName))
      return Icon(
        icon,
        size: 22,
        color: blackColor,
      );
    return Icon(icon,
        color: isHovering(itemName) ? blackColor : lightgreyColor);
  }
}
