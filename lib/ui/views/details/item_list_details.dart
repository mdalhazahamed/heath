import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heath/ui/const/colors.dart';
import 'package:heath/ui/style/style.dart';
import 'package:heath/ui/views/widgets/view_list_product.dart';

class ItemListDetails extends StatelessWidget {
  const ItemListDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 242, 242),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/img2.png"),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                                offset: Offset(-5, 5)),
                          ],
                          color: Colors.white,
                        ),
                        child: Icon(Icons.arrow_back_ios_new, size: 18.sp),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Syup 3rd Cef 50ml (1 pcs)",
                        style: TextStyle(fontSize: 14)),
                    SizedBox(height: 3.h),
                    Text("Cefixime Trihydrate",
                        style: TextStyle(
                            fontSize: 10, color: AppColors.roundedColor)),
                    SizedBox(height: 15.h),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_city,
                                        size: 12.sp,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: 5.w),
                                      Text(
                                        "Menufacture",
                                        style: TextStyle(
                                            fontSize: 9.sp, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Medimet Pharmaceuticals Ltd.",
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                ],
                              ),
                              SizedBox(width: 25.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.delivery_dining,
                                        size: 12.sp,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: 5.w),
                                      Text(
                                        "Delivery",
                                        style: TextStyle(
                                            fontSize: 9.sp, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Friday, 14 Oct,2022",
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Container(
                        height: 25.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          border: Border.all(color: Colors.red),
                        ),
                        child: Center(
                          child: Text(
                            "Limited Stock",
                            style: style14(Colors.red),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.h, bottom: 15.h),
                      child: Text("Alternative Brands",
                          style: style18(Colors.black)),
                    ),
                    ViewListProducts(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, bottom: 15.h),
                      child: Text("Remmended for you",
                          style: style18(Colors.black)),
                    ),
                    ViewListProducts(),
                    Padding(
                      padding: EdgeInsets.only(top: 15.h),
                      child: Container(
                        width: double.infinity.w,
                        height: 65.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8.h, left: 10.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "৳ 201.60",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "৳ 420.60",
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 8.w),
                                      Icon(Icons.discount,
                                          color: Colors.red, size: 12.sp),
                                      SizedBox(width: 5.w),
                                      Text(
                                        "52.00%",
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 40.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                color: AppColors.roundedColor,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Center(
                                child: Text(
                                  "Add To Bag",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11.sp),
                                ),
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
