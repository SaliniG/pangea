import 'package:flutter/material.dart';
import 'package:pangea_app/utils/colors.dart';


Widget circularLoading() {
  return Container(
    child: CircularProgressIndicator(
      backgroundColor: brandColor,
      valueColor: AlwaysStoppedAnimation<Color>(
        Colors.white,
      ),
    ),
  );
}