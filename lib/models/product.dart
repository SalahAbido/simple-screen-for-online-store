import 'package:flutter/material.dart';

class Product {
  late final int id, price;
  final Color color;
  late final String title, subTitle, description, image;

  Product(
      {required this.color,
      required this.id,
      required this.price,
      required this.title,
      required this.subTitle,
      required this.description,
      required this.image});
}

List<Product> products = [
  Product(
      color: Colors.red,
      id: 1,
      price: 10,
      title: "Iphone",
      subTitle: "personal phone ",
      description: "phones is used to call",
      image: "assets/images/iphone-13-removebg-preview.png"),
  Product(
      color: Colors.black,
      id: 2,
      price: 11,
      title: "camera",
      subTitle: "personal camera ",
      description: "camera is used to take photo",
      image: "assets/images/camera-removebg-preview.png"),
  Product(
      color: Colors.black,
      id: 3,
      price: 12,
      title: "Buds",
      subTitle: "personal Buds ",
      description: "Buds is used to listen Music ",
      image: "assets/images/buds-removebg-preview.png"),
  Product(
      color: Colors.red,
      id: 4,
      price: 15,
      title: "Head Phones",
      subTitle: "personal Head phone ",
      description: "Head phone is used to call",
      image: "assets/images/head_phones_-removebg-preview.png"),
];
