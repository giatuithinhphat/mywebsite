import 'package:flutter/material.dart';
import 'package:website/helpers/responsive.dart';
import 'package:website/widgets/horizontal_menu_items.dart';
import 'package:website/widgets/vertical_menu_items.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const SideMenuItem({Key key, @required this.itemName, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!ResponsiveWidget.isSmallScreen(context)) {
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
  }
}
