import 'package:flutter/widgets.dart';
import 'package:website/constants/controllers.dart';
import 'package:website/pages/localguide/local_guide.dart';
import 'package:website/pages/service/services_page.dart';
import 'package:website/routing/router.dart';
import 'package:website/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: LocalGuidePageRoute,
      onGenerateRoute: generateRoute,
    );
