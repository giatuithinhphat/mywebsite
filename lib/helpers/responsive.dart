import 'package:flutter/material.dart';

const int desktopSize = 1366;
const int tabletSize = 768;
const int mobileSize = 360;

class ResponsiveWidget extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;
  const ResponsiveWidget({
    Key key,
    this.desktop,
    this.tablet,
    this.mobile,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < tabletSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= tabletSize &&
      MediaQuery.of(context).size.width < desktopSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrants) {
        double _width = constrants.maxWidth;
        if (_width >= desktopSize) {
          return desktop;
        } else if (_width < desktopSize && _width >= tabletSize) {
          return tablet ?? desktop;
        } else {
          return mobile ?? desktop;
        }
      },
    );
  }
}
