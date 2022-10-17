import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heath/ui/views/auth/login_screen.dart';
import 'package:heath/ui/const/colors.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, CupertinoPageRoute(builder: (_) => LoginScreen())));
    return Scaffold(
      body: Center(
        child: CircleAvatar(backgroundColor: AppColors.roundedColor),
      ),
    );
  }
}
