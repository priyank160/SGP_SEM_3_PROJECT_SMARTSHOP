import 'package:flutter/material.dart';

class Product {
  final String title, description, rating;
  final List<String> images;
  final List<Color> colors;
  final List<String> size;
  final double price;
  bool isFavourite, inCart;
  final bool isPopular;

  Product({
    required this.images,
    required this.colors,
    this.rating = '0.0',
    this.isFavourite = false,
    this.isPopular = false,
    this.inCart = false,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
  });
}

List<Product> demoProducts = [
  Product(
      images: [
        "images/blazer.jpg",
        "images/women_beltedcoat.jpg",
        "images/watch.jpg",
        "images/shoes.jpg",
      ],
      colors: [
        Colors.black,
        Colors.brown,
      ],
      title: "Men's Blazer",
      price: 999.00,
      description:
          "This classic blazer will give smart-casual outfits an extra dose of sharpness. Single breasted design in a modern tailored fit with flap pockets. Added stretch for unrestricted movement and fully lined for a smooth finish. Mix and match with other tailored separates from our range. Made with recycled polyester.",
      rating: '4.8',
      isFavourite: true,
      isPopular: true,
      inCart: false,
      size: [
        "S",
        "M",
        "L",
        "XL",
      ]),
  Product(
      images: [
        "images/women_beltedcoat.jpg",
      ],
      colors: [
        Colors.grey,
        Colors.red,
      ],
      title: "Women belt-coat",
      price: 299.12,
      description:
          "The model is also styled with: Paris Georgia Marlo strap bustier top, Soulland Erich straight-leg trousers, Givenchy 45mm leather mules.",
      rating: '4.0',
      isPopular: true,
      inCart: false,
      size: [
        "S",
        "M",
        "L",
      ]),
  Product(
      images: [
        "images/babycloth.jpg",
      ],
      colors: [
        Colors.red,
        Colors.black,
      ],
      title: "Bowy Dress",
      price: 299.12,
      description:
          "Red dress with pearl embellishment at yoke.Mittens with flower attached on it and elastic at wrist.Booties with flower attached at front and knot to tie at bak.Booties with pearl and sequin embellishment on it",
      rating: '4.0',
      isPopular: true,
      inCart: false,
      size: ['S', 'M', 'L']),
  Product(
      images: [
        "images/shoes.jpg",
      ],
      colors: [
        Colors.black,
        Colors.white,
      ],
      title: "Shoes",
      price: 299.12,
      description:
          "Running shoes should facilitate soft foot strikes, joint flexion in the lower extremity joints, controlled motion, and foot strength, shoe characteristics also may facilitate muscle recruitment from lower body muscles that are unaccustomed to loading.",
      rating: '4.0',
      isPopular: true,
      inCart: false,
      size: ['6', '7', '8', '9']),
];
