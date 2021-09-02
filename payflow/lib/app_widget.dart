import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_collors.dart';

import 'modules/login/login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: AppColors.primary),
      // home: Splash(),
      home: LoginPage(),
    );
  }
}