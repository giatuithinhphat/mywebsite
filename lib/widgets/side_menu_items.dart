import 'package:flutter/material.dart';
import 'package:website/helpers/responsive.dart';
import 'package:website/widgets/horizon.dart';
import 'package:website/widgets/vertical.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const SideMenuItem({Key key, this.itemName, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isDesktop(context))
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    return VerticalMenuItem(
      itemName: itemName,
      onTap: onTap,
    );
  }
}
