import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/constants/constants.dart';
import 'package:website/helpers/responsive.dart';
import '../constants/controllers.dart';
import '../routing/routes.dart';
import 'custom_text.dart';

final String itemName = "";
AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: ResponsiveWidget.isDesktop(context)
          ? Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: SvgPicture.asset(
                    "assets/logo/jlogo.svg",
                    width: 40,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: Icon(
                Icons.menu,
                color: mainColor,
              ),
              onPressed: () {
                key.currentState.openDrawer();
              }),
      title: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Welcome to Thịnh Phát Laundromat",
                  color: Colors.white,
                  size: ResponsiveWidget.isDesktop(context) ? 20 : 14,
                  weight: FontWeight.bold,
                ),
                CustomText(
                  text: "17B Nguyễn Ngọc Sanh, K3, P6, Tp.Cà Mau",
                  color: lightgrey,
                  size: ResponsiveWidget.isDesktop(context) ? 14 : 12,
                )
              ],
            ),
            !ResponsiveWidget.isMobile(context)
                ? Expanded(child: Container())
                : Container(),
            Visibility(
              visible: ResponsiveWidget.isDesktop(context),
              child: Row(
                children: [
                  IconMenu(
                    icon: Icons.home,
                    name: "Home",
                    itemName: HomePageRoute,
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  IconMenu(
                    icon: Icons.drive_eta,
                    name: "Local Guide",
                    itemName: LocalGuidePageRoute,
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  IconMenu(
                    icon: Icons.info,
                    name: "Contact",
                    itemName: ContactPageRoute,
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  IconMenu(
                    icon: Icons.help,
                    name: "Services",
                    itemName: ServicesPageRoute,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      iconTheme: IconThemeData(color: dark),
      elevation: 0,
      backgroundColor: blackColor,
    );

class IconMenu extends StatelessWidget {
  final IconData icon;
  final String name;
  final String itemName;
  const IconMenu({
    Key key,
    this.icon,
    this.name,
    this.itemName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        color: menuController.isHovering(itemName)
            ? lightgreyColor.withOpacity(.1)
            : Colors.transparent,
        child: Column(
          children: [
            Icon(
              icon,
              color: mainColor,
            ),
            Text(
              name,
              style: GoogleFonts.notoSerif(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        if (!menuController.isActive(itemName)) {
          menuController.changeActiveItemTo(itemName);
          // TODO :: Go to itemName route
          navigationController.navigateTo(itemName);
        }
      },
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
    );
  }
}
