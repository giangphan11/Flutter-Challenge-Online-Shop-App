import 'package:flutter/material.dart';
import 'package:onlineshop/models/detail_color.dart';

class Product{
  final String? image, title, description;
  final int? price, size, id ;
  final Color? color;
  final List<DetailColor>? listDetailColor;


  Product({
    this.image,
    this.color,
    this.size,
    this.description,
    this.id,
    this.price,
    this.title,
    this.listDetailColor
});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: const Color(0xFF3D82AE),
      listDetailColor: [DetailColor(color: Color(0xff056395), isSelected: true), DetailColor(color: Color(0xfff8c078)), DetailColor(color: Color(0xffa29b9b))]),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 1234,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: const Color(0xFFD3A984),
      listDetailColor: [DetailColor(color: Color(0xff056395), isSelected: true), DetailColor(color: Color(0xfff8c078)), DetailColor(color: Color(0xffa29b9b))]),
  Product(
      id: 3,
      title: "Hang Top",
      price: 2434,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: const Color(0xFF989493),
      listDetailColor: [DetailColor(color: Color(0xff056395), isSelected: true), DetailColor(color: Color(0xfff8c078)), DetailColor(color: Color(0xffa29b9b))]),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 2364,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: const Color(0xFFE6B398), listDetailColor: [DetailColor(color: Color(0xff056395), isSelected: true), DetailColor(color: Color(0xfff8c078)), DetailColor(color: Color(0xffa29b9b))]),
  Product(
      id: 5,
      title: "Office Code",
      price: 2384,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: const Color(0xFFFB7883), listDetailColor: [DetailColor(color: Color(0xff056395), isSelected: true), DetailColor(color: Color(0xfff8c078)), DetailColor(color: Color(0xffa29b9b))]),
  Product(
    id: 6,
    title: "Office Code",
    price: 2343,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: const Color(0xFFAEAEAE),
    listDetailColor: [DetailColor(color: Color(0xff056395), isSelected: true), DetailColor(color: Color(0xfff8c078)), DetailColor(color: Color(0xffa29b9b))]
  ),

  Product(
    id: 7,
    title: "Black cap",
    price: 11222,
    size: 12,
    description: dummyText,
    image: "assets/images/cap1.jpg",
    color: const Color(0xFF2B303C),
    listDetailColor: [DetailColor(color: Color(0xff056395), isSelected: true), DetailColor(color: Color(0xfff8c078)), DetailColor(color: Color(0xffa29b9b))]
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
