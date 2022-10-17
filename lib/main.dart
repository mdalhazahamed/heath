import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heath/ui/routes/route.dart';

import 'package:heath/ui/views/button_navi_controller.dart';
import 'package:heath/ui/views/details/item_list_details.dart';
import 'package:heath/ui/views/screens/home_screen.dart';
import 'package:heath/ui/views/screens/orders_screen.dart';
import 'package:heath/ui/views/screens/shortcuts_screen.dart';
import 'package:heath/ui/views/splash_screen.dart';
import 'package:heath/ui/views/widgets/notifications.dart';
import 'package:heath/ui/views/screens/profile_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Food delivery app',
            theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(),
            ),
            initialRoute: splash,
            getPages: getPages,
            home: SplashScreen(),
          );
        });
  }
}
