import 'package:flutter/material.dart';

class MenTshirt {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  bool isFavourite;
  final bool isPopular;
  final List<String> size;

  MenTshirt({
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
  });
}

List<MenTshirt> demoMenTshirt = [
  MenTshirt(
      images: [
        "images/mts1.jpg",
        "images/mts2.jpg",
        "images/mts3.jpg",
        "images/mts4.jpg",
      ],
      colors: [
        Colors.black,
        Colors.brown,
      ],
      title: "T-Shirts",
      price: 999.00,
      description: "description",
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
      size: ['S', 'M', 'L', 'X', 'XL', 'XLL']),
  MenTshirt(
      images: [
        "images/mts2.jpg",
      ],
      colors: [
        Colors.black,
        Colors.brown,
      ],
      title: "T-Shirts",
      price: 299.12,
      description: "description",
      rating: 4.0,
      isPopular: true,
      size: ['S', 'M', 'L', 'X', 'XL', 'XLL']),
  MenTshirt(
      images: [
        "images/mts3.jpg",
      ],
      colors: [
        Colors.black,
        Colors.brown,
      ],
      title: "white TShirts",
      price: 299.12,
      description: "description",
      rating: 4.0,
      isPopular: true,
      size: ['S', 'M', 'L', 'X', 'XL', 'XLL']),
  MenTshirt(
      images: [
        "images/mts4.jpg",
      ],
      colors: [
        Colors.black,
        Colors.brown,
      ],
      title: "Black T-Shirts",
      price: 299.12,
      description: "description",
      rating: 4.0,
      isPopular: true,
      size: ['S', 'M', 'L', 'X', 'XL', 'XLL']),
];
