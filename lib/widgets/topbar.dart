import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:website/constants/constants.dart';
import 'package:website/constants/controllers.dart';
import 'package:website/helpers/responsive.dart';
import 'package:website/main.dart';
import 'package:website/pages/home/home_page.dart';
import 'package:website/pages/local_guide/local_guide_page.dart';
import 'package:website/pages/services/services_page.dart';
import 'package:website/widgets/vertical.dart';
import '../routing/routes.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      toolbarHeight: ResponsiveWidget.isDesktop(context) ? 150 : 60,
      leading: ResponsiveWidget.isMobile(context) ||
              ResponsiveWidget.isTablet(context)
          ? IconButton(
              onPressed: () {
                key.currentState.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: mainColor,
              ))
          : SizedBox(
              width: 1,
            ),
      iconTheme: IconThemeData(color: blackColor),
      backgroundColor: blackColor,
      title: Row(
        children: [
          // Left
          ResponsiveWidget.isDesktop(context)
              ? Column(
                  children: [
                    Icon(
                      (Icons.pin_drop),
                      color: mainColor,
                      size: 68,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "17B Nguyễn Ngọc Sanh",
                      style: TextStyle(
                          color: lightgreyColor,
                          fontFamily: 'Raleway',
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Khóm 3, Phường 6, Tp. Cà Mau",
                      style: TextStyle(
                          color: lightgreyColor,
                          fontFamily: 'Raleway',
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                )
              : SizedBox(
                  width: 1,
                ),
          Spacer(),
          // Middle
          ResponsiveWidget.isDesktop(context)
              ? InkWell(
                  onTap: () {
                    navigationController.navigateTo(HomePageRoute);
                  },
                  child: Column(
                    children: [
                      // Logo
                      SvgPicture.asset(
                        "assets/logo/jlogo.svg",
                        height: 68,
                      ),

                      // Tên tiệm
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Giặt ủi Thịnh Phát".toUpperCase(),
                            style: TextStyle(
                                color: mainColor,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          )),
                      // Slogan
                      Text(
                        "Giặt Sạch - Sấy Thơm - Xếp Gọn",
                        style: TextStyle(
                            color: whiteColor,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      )
                    ],
                  ),
                )
              : Column(
                  children: [
                    // Logo
                    SvgPicture.asset(
                      "assets/logo/jlogo.svg",
                      height: 26,
                    ),

                    // Tên tiệm
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 2),
                        child: Text(
                          "Giặt ủi Thịnh Phát".toUpperCase(),
                          style: TextStyle(
                              color: mainColor,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )),
                    // Slogan
                    Text(
                      "Giặt Sạch - Sấy Thơm - Xếp Gọn",
                      style: TextStyle(
                          color: whiteColor,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.normal,
                          fontSize: 8),
                    )
                  ],
                ),
          Spacer(),
          // Right
          ResponsiveWidget.isDesktop(context)
              ? Container(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              navigationController.navigateTo(HomePageRoute);
                            },
                            icon: Icon(
                              CupertinoIcons.home,
                              color: mainColor,
                            )),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        IconButton(
                            onPressed: () {
                              navigationController.navigateTo(AboutPageRoute);
                            },
                            icon: Icon(
                              CupertinoIcons.group_solid,
                              color: mainColor,
                            )),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        IconButton(
                            onPressed: () {
                              navigationController
                                  .navigateTo(ServicesPageRoute);
                            },
                            icon: Icon(
                              CupertinoIcons.info,
                              color: mainColor,
                            )),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        IconButton(
                            onPressed: () {
                              navigationController
                                  .navigateTo(LocalGuidePageRoute);
                            },
                            icon: Icon(
                              CupertinoIcons.pin_slash,
                              color: mainColor,
                            )),
                        SizedBox(
                          width: defaultPadding,
                        ),
                      ]),
                )
              : SizedBox(
                  width: 1,
                ),
        ],
      ),
    );
