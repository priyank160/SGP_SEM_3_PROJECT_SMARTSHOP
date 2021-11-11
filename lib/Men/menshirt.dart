import 'package:flutter/material.dart';

class MenShirt {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  MenShirt({
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

List<MenShirt> demoMenShirt = [
  MenShirt(
    images: [
      "images/ms1.jpg",
      "images/ms2.jpg",
      "images/ms3.jpg",
      "images/ms4.jpg",
      "images/ms5.jpg",
    ],
    colors: [
      Colors.black,
      Colors.brown,
    ],
    title: "Jeans Shirt",
    price: 999.00,
    description: "description",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  MenShirt(
    images: [
      "images/ms2.jpg",
    ],
    colors: [
      Colors.black,
      Colors.brown,
    ],
    title: "Petten Shirt",
    price: 299.12,
    description: "description",
    rating: 4.0,
    isPopular: true,
  ),
  MenShirt(
    images: [
      "images/ms3.jpg",
    ],
    colors: [
      Colors.black,
      Colors.brown,
    ],
    title: "Simple Shirt",
    price: 299.12,
    description: "description",
    rating: 4.0,
    isPopular: true,
  ),
  MenShirt(
    images: [
      "images/ms4.jpg",
    ],
    colors: [
      Colors.black,
      Colors.brown,
    ],
    title: "Degine Shirt",
    price: 299.12,
    description: "description",
    rating: 4.0,
    isPopular: true,
  ),
  MenShirt(
    images: [
      "images/ms5.jpg",
    ],
    colors: [
      Colors.black,
      Colors.brown,
    ],
    title: "Red Shirt",
    price: 299.12,
    description: "description",
    rating: 4.0,
    isPopular: true,
  ),
];
