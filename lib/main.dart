import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/controllers/navigation_controllers.dart';
import 'package:website/layout.dart';
import 'controllers/menu_controllers.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Thịnh Phát Laundromat",
      home: SiteLayout(),
    );
  }
}
