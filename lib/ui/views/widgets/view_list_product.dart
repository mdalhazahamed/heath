import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:heath/ui/const/colors.dart';
import 'package:heath/ui/model/items_list.dart';
import 'package:heath/ui/model/view_item.dart';
import 'package:heath/ui/routes/route.dart';
import 'package:heath/ui/style/style.dart';

class ViewListProducts extends StatelessWidget {
  const ViewListProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: Container(
              height: 130.h,
              width: 260.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0.1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 244, 244),
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/images/img.png"),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.0.w, vertical: 6.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 20.h,
                              width: 55.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: Color.fromARGB(255, 255, 218, 218),
                              ),
                              child: Center(
                                child: Text("52.00%",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.red)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Edruc Ltd.",
                            style:
                                TextStyle(fontSize: 9.sp, color: Colors.grey),
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            "Capsule 3-C",
                            style: style12(Colors.black),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            "200mg (12 pcs)",
                            style: style12(Colors.black),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '৳ 420',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      '৳ 200',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.delivery_dining,
                                            color: AppColors.roundedColor,
                                            size: 12),
                                        SizedBox(width: 3.w),
                                        Text(
                                          'Delivery',
                                          style: TextStyle(
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '14 Oct',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
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
          ),
          SizedBox(width: 10.w),
        ],
      ),
    );
  }
}
