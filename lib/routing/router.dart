import 'package:flutter/material.dart';
import 'package:website/pages/about/about_page.dart';
import 'package:website/pages/home/home_page.dart';
import 'package:website/pages/local_guide/local_guide_page.dart';
import 'package:website/pages/services/services_page.dart';
import 'package:website/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePageRoute:
      return _getPageRoute(HomePage());
    case AboutPageRoute:
      return _getPageRoute(AboutPage());
    case LocalGuidePageRoute:
      return _getPageRoute(LocalGuidePage());
    case ServicesPageRoute:
      return _getPageRoute(ServicesPage());
    default:
      return _getPageRoute(HomePage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
