import 'package:flutter/material.dart';
import 'package:pangea_app/utils/colors.dart';
import 'package:pangea_app/utils/responsive_screen.dart';

Widget searchWidget(ResponsiveScreen _responsiveScreen) {
  return Container(
    height: _responsiveScreen.rH(7),
    color: brandColor,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: grey07,
          border: Border.all(color: Colors.transparent),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              hintText: "Search doctor by name",
              hintStyle: TextStyle(fontSize: 17, color: grey01),
            ),
          ),
        ),
      ),
    ),
  );
}
