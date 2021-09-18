import 'package:flutter/material.dart';
import 'package:pangea_app/screens/local_widget/card_widget.dart';
import 'package:pangea_app/screens/local_widget/search_login_widget.dart';
import 'package:pangea_app/utils/colors.dart';
import 'package:pangea_app/utils/responsive_screen.dart';

class HomePage extends StatelessWidget {
  late ResponsiveScreen _responsiveScreen;

  @override
  Widget build(BuildContext context) {
    _responsiveScreen = ResponsiveScreen(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          _responsiveScreen.rH(10),
        ),
        child: AppBar(
          leading: Container(
            width: 47,
            child: Center(
              child: Icon(
                Icons.menu_outlined,
                color: Colors.white,
              ),
            ),
          ),
          centerTitle: true,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                child: Column(
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Mr. Saad Naseem',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '784-482638736-966',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(
                Icons.add_to_home_screen,
              ),
            ),
          ],
          backgroundColor: brandColor,
          elevation: 0,
        ),
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              searchWidget(_responsiveScreen),
              SizedBox(
                height: _responsiveScreen.rH(1.5),
              ),
              commonLogoWidget(
                context,
                _responsiveScreen,
                'assets/images/video.png',
                'Live Consultation',
                'Live consultation with any provider',
                darkOrange,
              ),
              SizedBox(
                height: _responsiveScreen.rH(1.5),
              ),
              commonLogoWidget(
                context,
                _responsiveScreen,
                'assets/images/video.png',
                'Book Live Appointment',
                'Book your activity with registered doctor',
                green,
              ),
              SizedBox(
                height: _responsiveScreen.rH(1.5),
              ),
              commonLogoWidget(
                context,
                _responsiveScreen,
                'assets/images/video.png',
                'Live Consultation',
                'Live consultation with any provider',
                blue,
              ),
              SizedBox(
                height: _responsiveScreen.rH(1.5),
              ),
              commonLogoWidget(
                context,
                _responsiveScreen,
                'assets/images/video.png',
                'Upload Report/File',
                'Upload official document in your IPS',
                fadeBlue,
              ),
              SizedBox(
                height: _responsiveScreen.rH(1.5),
              ),
              commonLogoWidget(
                context,
                _responsiveScreen,
                'assets/images/video.png',
                'Live Consultation',
                'Live consultation with any provider',
                greyFade,
              ),
              SizedBox(
                height: _responsiveScreen.rH(1.5),
              ),
              commonLogoWidget(
                  context,
                  _responsiveScreen,
                  'assets/images/video.png',
                  'Live Consultation',
                  'Live consultation with any provider',
                  skyBlue),
              SizedBox(
                height: _responsiveScreen.rH(1.5),
              ),
              commonLogoWidget(
                context,
                _responsiveScreen,
                'assets/images/video.png',
                'Live Consultation',
                'Live consultation with any provider',
                orange,
              ),
              SizedBox(
                height: _responsiveScreen.rH(1.5),
              ),
              commonLogoWidget(
                context,
                _responsiveScreen,
                'assets/images/video.png',
                'Live Consultation',
                'Live consultation with any provider',
                fadeBlue,
              ),
              SizedBox(
                height: _responsiveScreen.rH(1.5),
              ),
              commonLogoWidget(
                context,
                _responsiveScreen,
                'assets/images/video.png',
                'Live Consultation',
                'Live consultation with any provider',
                blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
