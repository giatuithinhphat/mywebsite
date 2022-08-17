import 'package:flutter/material.dart';
import 'package:website/helpers/local_navigator.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return localNavigator();
  }
}
