import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int resolusi, id;
  final double price;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.resolusi,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "instax Mini Mint 7+",
      price: 49.90,
      resolusi: 12,
      description: dummyText,
      image: "assets/images/InstaxMini7plus_Mint_R.png",
      color: Color(0xFF00ACC1)),
  Product(
      id: 2,
      title: "Instax Mini Blue 7+ ",
      price: 50.90,
      resolusi: 8,
      description: dummyText,
      image: "assets/images/InstaxMini7plus_Blue_R.png",
      color: Color(0xFF1976D2)),
  Product(
      id: 3,
      title: "Instax Mini Choral 7+",
      price: 51.90,
      resolusi: 10,
      description: dummyText,
      image: "assets/images/InstaxMini7plus_Choral_R.png",
      color: Color(0xFFf9683a)),
  Product(
      id: 4,
      title: "Instax Mini Pink 7+",
      price: 52.90,
      resolusi: 11,
      description: dummyText,
      image: "assets/images/InstaxMini7plus_Pink_R.png",
      color: Color(0xFFff80ab)),
  Product(
      id: 5,
      title: "Instax Mini Lavender 7+",
      price: 53.90,
      resolusi: 12,
      description: dummyText,
      image: "assets/images/InstaxMini7plus_Lavender_R.png",
      color: Color(0xFF8e24aa)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
