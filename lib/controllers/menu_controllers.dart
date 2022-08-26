import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/constants/constants.dart';
import 'package:website/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = HomePageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case HomePageRoute:
        return _customIcon(Icons.home, itemName);
      case LocalGuidePageRoute:
        return _customIcon(Icons.drive_eta, itemName);
      case AboutPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case ServicesPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
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
