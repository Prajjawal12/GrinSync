import 'package:flutter/material.dart';
import 'package:social_media_app/config/app_routes.dart';

import 'package:social_media_app/pages/login_page.dart';
import 'package:social_media_app/styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: AppColors.background,
          brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
