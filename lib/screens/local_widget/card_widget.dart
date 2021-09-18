import 'package:flutter/material.dart';
import 'package:pangea_app/utils/colors.dart';
import 'package:pangea_app/utils/responsive_screen.dart';

Widget commonLogoWidget(
  BuildContext context,
  ResponsiveScreen responsiveScreen,
  String imageText,
  String titleText,
  String detailText,
  Color color,
) {
  return Container(
    height: responsiveScreen.rH(6.5),
    width: responsiveScreen.rW(80),
    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      color: color,
      boxShadow: [
        BoxShadow(
          color: grey03,
          offset: Offset(0.0, 0.5), //(x,y)
          blurRadius: 6.0,
        ),
      ],
    ),
    child: Row(
      children: [
        Column(

          children: [
            Container(
              height: responsiveScreen.rH(5),
              width: responsiveScreen.rW(8),
              child: Image(
                image: new AssetImage(
                  imageText,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: responsiveScreen.rW(3),
        ),
        Column(
          children: [
            Text(
              '$titleText',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$detailText',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
