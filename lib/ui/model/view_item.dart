import 'package:flutter/material.dart';

class ViewList {
  final String image;
  final String name;
  final String subTitle;
  final String compnay;
  final String day;
  final String month;
  final String year;
  final String price;
  final String discount;
  final String parcent;

  ViewList({
    required this.image,
    required this.name,
    required this.month,
    required this.compnay,
    required this.day,
    required this.subTitle,
    required this.year,
    required this.price,
    required this.discount,
    required this.parcent,
  });
}

List<ViewList> viewlisttData = [
  ViewList(
    image: "assets/images/img.png",
    compnay: "Edruc Ltd",
    name: "Capsule 3-C",
    subTitle: "200gb (12 Pcs)",
    price: "৳ 500.00",
    discount: "৳300.00",
    parcent: "25.00%",
    day: "Thusday",
    month: "09",
    year: "Jan",
  ),
   ViewList(
    image: "assets/images/img1.png",
    compnay: "Edruc Ltd",
    name: "Capsule 3-C",
    subTitle: "200gb (12 Pcs)",
    price: "৳ 500.00",
    discount: "৳300.00",
    parcent: "25.00%",
    day: "Thusday",
    month: "09",
    year: "Jan",
  ),
   ViewList(
    image: "assets/images/img2.png",
    compnay: "Edruc Ltd",
    name: "Capsule 3-C",
    subTitle: "200gb (12 Pcs)",
    price: "৳ 500.00",
    discount: "৳300.00",
    parcent: "25.00%",
    day: "Thusday",
    month: "09",
    year: "Jan",
  ),
   ViewList(
    image: "assets/images/img3.png",
    compnay: "Edruc Ltd",
    name: "Capsule 3-C",
    subTitle: "200gb (12 Pcs)",
    price: "৳ 500.00",
    discount: "৳300.00",
    parcent: "25.00%",
    day: "Thusday",
    month: "09",
    year: "Jan",
  ),
  
];
