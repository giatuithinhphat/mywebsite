import 'package:flutter/material.dart';
import 'package:website/helpers/responsive.dart';
import 'package:website/widgets/large_screen.dart';
import 'package:website/widgets/side_menu.dart';
import 'package:website/widgets/small_screen.dart';
import 'package:website/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        desktop: LargeScreen(),
        tablet: SmallScreen(),
        mobile: SmallScreen(),
      ),
    );
  }
}
