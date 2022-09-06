import 'package:flutter/material.dart';
import 'package:website/routing/routes.dart';

import '../pages/contact/contact.dart';
import '../pages/home/home_page.dart';
import '../pages/localguide/local_guide.dart';
import '../pages/service/services_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePageRoute:
      return _getPageRoute(HomePage());
    case LocalGuidePageRoute:
      return _getPageRoute(LocalGuidePage());
    case ServicesPageRoute:
      return _getPageRoute(ServicesPage());
    case ContactPageRoute:
      return _getPageRoute(ContactPage());
    default:
      return _getPageRoute(HomePage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
