import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryList extends StatelessWidget {
  final ontab;
  const CategoryList({super.key, this.ontab});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: Container(
        height: 130.h,
        width: double.infinity,
        child: Card(
          elevation: 0.4,
          child: Row(
            children: [
              Container(
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
