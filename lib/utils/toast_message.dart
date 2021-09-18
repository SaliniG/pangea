import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMessage {
  static void showToastMessage({
    required String message,
    required bgColor,
    textColor = Colors.white,
    Toast duration = Toast.LENGTH_SHORT,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: duration,
      backgroundColor: bgColor,
      textColor: textColor,
    );
  }

}
