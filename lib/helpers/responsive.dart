import 'package:flutter/material.dart';

const int desktopScreenSize = 1366;
const int tabletScreenSize = 768;

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveWidget({
    Key key,
    @required this.mobile,
    @required this.tablet,
    @required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < tabletScreenSize;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < desktopScreenSize &&
      MediaQuery.of(context).size.width >= tabletScreenSize;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double _width = constraints.maxWidth;
        if (_width >= desktopScreenSize) {
          return desktop;
        } else if (_width < desktopScreenSize && _width >= tabletScreenSize) {
          return tablet ?? desktop;
        } else {
          return mobile ?? desktop;
        }
      },
    );
  }
}
