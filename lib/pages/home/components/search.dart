import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:website/constants/constants.dart';

import 'sidebar_container.dart';

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Search",
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.all(defaultPadding / 2),
              child: SvgPicture.asset("assets/icons/feather_search.svg"),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(defaultPadding / 2),
                ),
                borderSide: BorderSide(color: Color(0xFFCCCCCC))),
            hintText: "Type to search here."),
      ),
    );
  }
}
