import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:heath/ui/routes/route.dart';
import 'package:heath/ui/style/style.dart';

class ProfileDeatils extends StatelessWidget {
  const ProfileDeatils({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 242, 242),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Profile",
            style: TextStyle(
                fontSize: 20.sp,
                color: Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.bold),
          ),
          toolbarHeight: 60.h,
          elevation: 0,
          backgroundColor: Color.fromARGB(179, 247, 245, 245),
        ),
        body: SingleChildScrollView(
          
          child: Column(
            children: [
              Container(
                height: 150.h,
                width: double.infinity.w,
                child: Card(
                  elevation: 0.3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 110.h,
                              width: 110.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/alhaz1.jpg"),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("BD IT CENTER",
                                    style: style18(Colors.black)),
                                SizedBox(height: 3.h),
                                Text(
                                  "01406666328",
                                  style: style12(Colors.black),
                                ),
                                Text(
                                  "Sales@bditcenter.com",
                                  style: style12(Colors.black),
                                ),
                                Text(
                                  "Mirpur Dhaka",
                                  style: style12(Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 247, 245, 245),
                            child: Icon(
                              Icons.arrow_back_ios_outlined,
                              size: 20.sp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              settingsBar(
                  onTab: () {},
                  name: 'SETTINGS',
                  icon: Icons.settings_outlined),
              settingsBar(
                  onTab: () {
                    Get.toNamed(updateScreen);
                  },
                  name: 'PASSWORD CHANGE',
                  icon: Icons.password_outlined),
              settingsBar(
                  onTab: () {}, name: 'HELPLINE', icon: Icons.call_outlined),
              Padding(
                padding: EdgeInsets.only(top: 210.h),
                child: Column(
                  children: [
                    Text("Version 1.17.0"),
                    SizedBox(height: 10.h),
                    Container(
                      height: 1.h,
                      width: double.infinity.w,
                      color: Color.fromARGB(255, 238, 10, 67),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 20.h),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(loginScreen);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("LOGOUT", style: style12(Colors.red)),
                            Icon(
                              Icons.logout,
                              color: Colors.red,
                              size: 20.sp,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class settingsBar extends StatelessWidget {
  final String name;
  final icon;
  final onTab;
  const settingsBar({
    Key? key,
    required this.name,
    this.icon,
    this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(updateScreen);
      },
      child: Container(
        height: 70.h,
        width: double.infinity.w,
        child: Card(
          elevation: 0.3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name, style: style12(Colors.black)),
                Icon(icon, size: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
