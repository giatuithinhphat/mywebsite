import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:website/constants/constants.dart';
import 'package:website/constants/controllers.dart';
import 'package:website/helpers/responsive.dart';
import '../routing/routes.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      toolbarHeight: 60,
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
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      (Icons.location_city),
                      color: mainColor,
                      size: 22,
                    ),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "17B Nguyễn Ngọc Sanh, Khóm 3, Phường 6, Tp. Cà Mau",
                          style: TextStyle(
                              color: whiteColor,
                              fontFamily: 'Raleway',
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Tel: 0949.450.567 (Hạnh)",
                          style: TextStyle(
                              color: whiteColor,
                              fontFamily: 'Raleway',
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
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
                  child: Row(
                    children: [
                      // Logo
                      SvgPicture.asset(
                        "assets/logo/jlogo.svg",
                        height: 40,
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Column(
                        children: [
                          // Tên tiệm
                          Text(
                            "Giặt ủi Thịnh Phát".toUpperCase(),
                            style: TextStyle(
                                color: mainColor,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          // Slogan
                          Text(
                            "Giặt Sạch - Sấy Thơm - Xếp Gọn",
                            style: TextStyle(
                                color: whiteColor,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          )
                        ],
                      ),
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
