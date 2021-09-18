import 'package:flutter/material.dart';
import 'package:pangea_app/service/login_service.dart';
import 'package:pangea_app/utils/circular_loading.dart';
import 'package:pangea_app/utils/colors.dart';
import 'package:pangea_app/utils/responsive_screen.dart';
import 'package:pangea_app/utils/toast_message.dart';
import 'package:provider/provider.dart';

Widget loginButton(
  BuildContext context,
  ResponsiveScreen _responsiveScreen,
  String emailController,
  String passwordController,
  bool isLoading,
) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
    child: GestureDetector(
      onTap: () => loginCommand(
        emailController,
        passwordController,
        context,
      ),
      child: Container(
        height: _responsiveScreen.rH(6),
        width: _responsiveScreen.rW(75),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: brandColor,
        ),
        child: Center(
          child: isLoading == false
              ? Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Center(
                  child: circularLoading(),
                ),
        ),
      ),
    ),
  );
}

void loginCommand(
  String _emailController,
  String _passwordController,
  BuildContext context,
) {
  if (_emailController.isEmpty || _passwordController.isEmpty) {
    return ToastMessage.showToastMessage(
      message: 'Please enter username and password',
      bgColor: Colors.red,
    );
  } else {
    Provider.of<LoginService>(
      context,
      listen: false,
    )..requestService();
  }
}
