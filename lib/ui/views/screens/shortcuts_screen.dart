import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heath/ui/const/colors.dart';
import 'package:heath/ui/views/widgets/card_discount.dart';
import 'package:heath/ui/views/widgets/category_list.dart';
import 'package:heath/ui/views/widgets/items_list.dart';

class ShortcutScreen extends StatelessWidget {
  const ShortcutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 238, 232, 232),
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo.png", width: 35.w),
                Text(
                  "HeathOS",
                  style: TextStyle(
                      fontSize: 22.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            elevation: 0,
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  icon: Icon(FontAwesomeIcons.chartLine),
                  text: "Trending",
                ),
                Tab(
                  icon: Icon(Icons.flash_auto_outlined),
                  text: "Flash",
                ),
                Tab(
                  icon: Icon(
                    FontAwesomeIcons.rectangleList,
                    size: 25.sp,
                  ),
                  text: "Recent",
                ),
              ],
            ),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.white,
                child: ItemsList(),
              ),
              Container(
                color: Colors.white,
                child: ItemsList(),
              ),
              Container(
                color: Colors.white,
                child: ItemsList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
