import 'package:flutter/material.dart';
import 'package:website/helpers/local_navigator.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return localNavigator();
  }
}
