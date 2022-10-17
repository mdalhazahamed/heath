import 'package:flutter/material.dart';

class DiscountModel {
  final String image;
  final String name;
  final String subTitle;
  final String compnay;
  final String day;
  final String month;
  final String year;
  final String price;

  DiscountModel(
      {required this.image,
      required this.name,
      required this.month,
      required this.compnay,
      required this.day,
      required this.subTitle,
      required this.year,
      required this.price});
}

List<DiscountModel> discountData = [
  DiscountModel(
    image: "assets/images/card.png",
    compnay: "HeathOS",
    name: "Coupon 0.50% Discount",
    subTitle: "Virtual Card(1 Month)",
    price: "৳ 500.00",
    day: "Thusday",
    month: "09",
    year: "Jan",
  ),
  DiscountModel(
    image: "assets/images/card1.png",
    compnay: "HeathOS",
    name: "Coupon 0.1% Discount",
    subTitle: "Napa Extra",
    price: "৳ 150.00",
    day: "Thusday",
    month: "11",
    year: "Oct",
  ),
];
