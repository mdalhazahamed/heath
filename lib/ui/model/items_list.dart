import 'package:flutter/material.dart';

class ItemsList {
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

  ItemsList({
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

List<ItemsList> itemlisttData = [
  ItemsList(
    image: "assets/images/img.png",
    compnay: "HeathOS",
    name: "Coupon 0.50% Discount",
    subTitle: "Virtual Card(1 Month)",
    price: "৳ 500.00",
    discount: "৳300.00",
    parcent: "25.00%",
    day: "Thusday",
    month: "09",
    year: "Jan",
  ),
  ItemsList(
    image: "assets/images/img1.png",
    compnay: "HeathOS",
    name: "Coupon 0.1% Discount",
    subTitle: "Napa Extra",
    price: "৳ 150.00",
    discount: "৳250.00",
    parcent: "52.00%",
    day: "Thusday",
    month: "11",
    year: "Oct",
  ),
  ItemsList(
    image: "assets/images/img2.png",
    compnay: "HeathOS",
    name: "Coupon 0.1% Discount",
    subTitle: "Napa Extra",
    price: "৳ 150.00",
    discount: "৳ 50.00",
    parcent: "52.00%",
    day: "Thusday",
    month: "11",
    year: "Oct",
  ),
  ItemsList(
    image: "assets/images/img3.png",
    compnay: "HeathOS",
    name: "Coupon 0.1% Discount",
    subTitle: "Napa Extra",
    price: "৳ 320.00",
    discount: "500.00",
    parcent: "32.00%",
    day: "Thusday",
    month: "08",
    year: "Feb",
  ),
  ItemsList(
    image: "assets/images/img1.png",
    compnay: "HeathOS",
    name: "Coupon 0.1% Discount",
    subTitle: "Napa Extra",
    price: "৳ 150.00",
    discount: "৳250.00",
    parcent: "52.00%",
    day: "Thusday",
    month: "11",
    year: "Oct",
  ),
  ItemsList(
    image: "assets/images/img2.png",
    compnay: "HeathOS",
    name: "Coupon 0.1% Discount",
    subTitle: "Napa Extra",
    price: "৳ 150.00",
    discount: "৳ 50.00",
    parcent: "52.00%",
    day: "Thusday",
    month: "11",
    year: "Oct",
  ),
  ItemsList(
    image: "assets/images/img3.png",
    compnay: "HeathOS",
    name: "Coupon 0.1% Discount",
    subTitle: "Napa Extra",
    price: "৳ 320.00",
    discount: "500.00",
    parcent: "32.00%",
    day: "Thusday",
    month: "08",
    year: "Feb",
  ),
];
