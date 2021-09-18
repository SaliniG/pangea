import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginService extends ChangeNotifier {
  late bool isLoading = false;

  late bool isLoginTried = false;

  Future requestService() async {
    isLoginTried = true;
    isLoading = true;
    notifyListeners();
    await Future.delayed(
      const Duration(seconds: 3),
      () {
        isLoading = false;
        notifyListeners();
      },
    );

  }

  bool shouldLogin() {
    return isLoginTried && !isLoading;
  }
}
