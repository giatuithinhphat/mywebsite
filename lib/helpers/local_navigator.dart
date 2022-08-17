import 'package:flutter/material.dart';
import 'package:website/routing/router.dart';
import 'package:website/routing/routes.dart';
import 'package:website/constants/controllers.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: HomePageRoute,
      onGenerateRoute: generateRoute,
    );
