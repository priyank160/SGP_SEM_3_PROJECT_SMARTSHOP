import 'package:flutter/material.dart';

class MenJeans {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  MenJeans({
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

List<MenJeans> demoMenJeans = [
  MenJeans(
    images: [
      "images/mj1.jpg",
      "images/mj2.jpg",
      "images/mj3.jpg",
      "images/mj4.jpg",
    ],
    colors: [
      Colors.black,
      Colors.brown,
    ],
    title: "Black Jeans",
    price: 999.00,
    description: "description",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  MenJeans(
    images: [
      "images/mj2.jpg",
    ],
    colors: [
      Colors.black,
      Colors.brown,
    ],
    title: "Blue Jeans",
    price: 299.12,
    description: "description",
    rating: 4.0,
    isPopular: true,
  ),
  MenJeans(
    images: [
      "images/mj3.jpg",
    ],
    colors: [
      Colors.black,
      Colors.brown,
    ],
    title: "Brown Jeans",
    price: 299.12,
    description: "description",
    rating: 4.0,
    isPopular: true,
  ),
  MenJeans(
    images: [
      "images/mj4.jpg",
    ],
    colors: [
      Colors.black,
      Colors.brown,
    ],
    title: "Gray Jeans",
    price: 299.12,
    description: "description",
    rating: 4.0,
    isPopular: true,
  ),
];
