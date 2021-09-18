import 'package:flutter/material.dart';
import 'package:pangea_app/screens/home_page.dart';
import 'package:pangea_app/screens/local_widget/login_button.dart';
import 'package:pangea_app/service/login_service.dart';
import 'package:pangea_app/utils/circular_loading.dart';
import 'package:pangea_app/utils/colors.dart';
import 'package:pangea_app/utils/responsive_screen.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late ResponsiveScreen _responsiveScreen;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _responsiveScreen = ResponsiveScreen(context);
    return ChangeNotifierProvider(
      create: (context) => LoginService(),
      child: Consumer<LoginService>(
        builder: (context, state, child) {
          if (state.isLoading == true)
            return Scaffold(
              backgroundColor: bgColor,
              body: Center(
                child: circularLoading(),
              ),
            );
          if (Provider.of<LoginService>(context).shouldLogin()) {
            Future.delayed(
              Duration.zero,
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            );
          }
          return Scaffold(
            backgroundColor: bgColor,
            body: SingleChildScrollView(
              child: Form(
                child: Container(
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: _responsiveScreen.rH(
                            10,
                          ),
                        ),
                        Container(
                          color: bgColor,
                          height: _responsiveScreen.rH(20),
                          child: Image(
                            image: new AssetImage(
                              "assets/images/logo.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: _responsiveScreen.rH(
                            3,
                          ),
                        ),
                        Text(
                          'Unified Medical File',
                          style: TextStyle(
                            color: brandColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: _responsiveScreen.rH(
                            10,
                          ),
                        ),
                        commonTextField(
                          context,
                          _responsiveScreen,
                          'Username or Email',
                          _emailController,
                          false,
                        ),
                        SizedBox(
                          height: _responsiveScreen.rH(4),
                        ),
                        commonTextField(
                          context,
                          _responsiveScreen,
                          'password',
                          _passwordController,
                          true,
                        ),
                        SizedBox(
                          height: _responsiveScreen.rH(
                            4,
                          ),
                        ),
                        loginButton(
                          context,
                          _responsiveScreen,
                          _emailController.text,
                          _passwordController.text,
                          state.isLoading,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Forgot Password?'),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Or'),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('New to Pangea app?'),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Register',
                              style: TextStyle(
                                color: brandColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget commonTextField(
    BuildContext context,
    ResponsiveScreen _responsiveScreen,
    String text,
    TextEditingController textController,
    bool isObscure,
  ) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        15.0,
        0.0,
        15.0,
        0.0,
      ),
      child: Container(
        height: _responsiveScreen.rH(
          6,
        ),
        width: _responsiveScreen.rW(
          75,
        ),
        padding: EdgeInsets.fromLTRB(
          10,
          10,
          10,
          0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15,
          ),
          border: Border.all(
            color: fadeBrandColor,
          ),
        ),
        child: TextField(
          obscureText: isObscure,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              color: grey02,
              fontWeight: FontWeight.bold,
            ),
            border: InputBorder.none,
          ),
          onChanged: (value) {
            final val = TextSelection.collapsed(
              offset: textController.text.length,
            );
            textController.selection = val;
            setState(() {
              textController.text = value;
            });
          },
        ),
      ),
    );
  }
}
