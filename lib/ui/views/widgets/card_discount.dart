import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:heath/ui/const/colors.dart';
import 'package:heath/ui/model/discount_list.dart';
import 'package:heath/ui/routes/route.dart';
import 'package:heath/ui/style/style.dart';

class CardDiscount extends StatelessWidget {
  final ontab;
  const CardDiscount({super.key, this.ontab});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: Column(
        children: [
          for (var i = 0; i < discountData.length; i++) ...[
            InkWell(
              onTap: (){
                 Get.toNamed(itemListDetails);
              },
              child: Container(
                height: 120.h,
                width: double.infinity.w,
                child: Card(
                  elevation: 0.8,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Row(
                          children: [
                            Container(
                              height: 60.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  end: Alignment.topRight,
                                  begin: Alignment.bottomRight,
                                  colors: [
                                    Color.fromARGB(255, 100, 75, 5),
                                    Color.fromARGB(205, 231, 198, 12),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(discountData[i].image),
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(discountData[i].compnay,
                                    style: TextStyle(
                                        fontSize: 9.sp, color: Colors.grey)),
                                Text(discountData[i].name,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500)),
                                Text(
                                  discountData[i].subTitle,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  discountData[i].price,
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: EdgeInsets.only(right: 9.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.delivery_dining,
                                    color: AppColors.roundedColor, size: 18.sp),
                                SizedBox(width: 3.w),
                                Text("Delivery",
                                    style: TextStyle(fontSize: 8.sp)),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Thusday,",
                                    style: TextStyle(fontSize: 8.sp)),
                                SizedBox(width: 3.w),
                                Text("11", style: TextStyle(fontSize: 8.sp)),
                                SizedBox(width: 3.w),
                                Text("Oct", style: TextStyle(fontSize: 8.sp)),
                              ],
                            ),
                            SizedBox(height: 15.h),
                            Container(
                              width: 100.h,
                              height: 30.w,
                              color: AppColors.BackgroudColor,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text("Add To Bag",
                                      style: TextStyle(
                                          fontSize: 10.sp, color: Colors.black))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
