import 'package:flutter/material.dart';
import 'package:website/helpers/responsive.dart';
import 'package:website/pages/desktop_screen.dart';
import 'package:website/pages/mobile_screen.dart';
import 'package:website/pages/tablet_screen.dart';
import 'package:website/widgets/side_menu.dart';
import 'package:website/widgets/topbar.dart';

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
        desktop: DesktopScreen(),
        mobile: MobileScreen(),
        tablet: TabletScreen(),
      ),
    );
  }
}
