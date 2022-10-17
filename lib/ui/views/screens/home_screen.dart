import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heath/ui/const/colors.dart';
import 'package:heath/ui/style/style.dart';
import 'package:heath/ui/views/widgets/card_discount.dart';
import 'package:heath/ui/views/widgets/items_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80.h,
        backgroundColor: AppColors.appBarColor,
        title: Row(
          children: [
            Image.asset("assets/images/logo.png", width: 30.w),
            Text(
              "Heath",
              style: style18(Colors.black),
            ),
            Text(
              "OS",
              style: style20(Colors.black),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: AppColors.witheColor,
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          SizedBox(width: 5.w),
          CircleAvatar(
            backgroundColor: AppColors.witheColor,
            child: Icon(Icons.security, color: Colors.grey),
          ),
          SizedBox(width: 5.w),
          CircleAvatar(
            backgroundColor: AppColors.witheColor,
            child: Icon(Icons.menu_book_rounded, color: Colors.grey),
          ),
          SizedBox(width: 5.w),
          CircleAvatar(
            backgroundColor: AppColors.witheColor,
            child: Icon(Icons.menu, color: Colors.grey),
          ),
          SizedBox(width: 12.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
          child: Column(
            children: [
              Container(
                height: 140.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/bannar.jpg"),
                  ),
                ),
              ),
              CardDiscount(),
              ItemsList(),
            ],
          ),
        ),
      ),
    );
  }
}
