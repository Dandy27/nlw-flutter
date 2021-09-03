import 'package:flutter/material.dart';

import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'modules/splash.dart';
import 'shared/themes/app_collors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: AppColors.primary),
      initialRoute: '/splash',
      routes: {
        "/splash": (context) => Splash(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
