import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 233, 233),
        appBar: AppBar(
          toolbarHeight: 70.h,
          elevation: 0.3,
          backgroundColor: Color.fromARGB(255, 248, 246, 246),
          title: Text(
            "Notifications",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: [
            Center(
              child: Text(
                "MARK ALL AS READ",
                style: TextStyle(fontSize: 10.sp, color: Colors.black87),
              ),
            ),
            SizedBox(width: 15.w),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 12.sp, vertical: 12.h),
                child: Column(
                  children: [
                    for (int i = 1; i < 100; i++)
                      Container(
                        height: 100.h,
                        width: double.infinity.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Card(
                          elevation: 0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 1.w),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "কিছু মজার তথ্য",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11.sp),
                                  ),
                                  SizedBox(height: 3.h),
                                  Text(
                                    " সংস্কৃতি",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11.sp),
                                  ),
                                  SizedBox(height: 3.h),
                                  Text(
                                    " দেশ বাংলাদেশ এর ব্যাপারে কিছু ব্যাপারে কিছু ব্যাপারে  ...",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10.sp),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(right: 15.w, top: 30.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "9 hours ago",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 9.sp),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
