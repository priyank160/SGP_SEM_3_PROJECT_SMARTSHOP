import 'package:flutter/material.dart';
import 'package:flutter_application/Men/men_page.dart';
import 'package:flutter_application/Product/product.dart';
import 'package:flutter_application/Product/productdetails.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: const [
                Color(0xFFFFFFFF),
                Color(0xFF82D1DF),
                Color(0xFF00D9FF),
              ])),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(50),
                          child: Stack(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.shopping_bag,
                                  color: Colors.white,
                                ),
                              ),
                              Positioned(
                                  top: -1,
                                  right: 0,
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.5, color: Colors.white)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text(
                                        '4',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(50),
                          child: Stack(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                              ),
                              Positioned(
                                  top: -1,
                                  right: 0,
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.5, color: Colors.white)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text(
                                        '3',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Color(0xFF00D9FF),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "A Summer Surpise",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Cashback 20%',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenPage()));
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFECDF),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.male),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        "Male",
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFECDF),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.female),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        "Female",
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFECDF),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        "Kids",
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFECDF),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.male),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        "Home",
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFECDF),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.male),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        "Electonic",
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Suggetion for you',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "see more",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SpecialOfferCard(
                      image: "images/mobile.jpg",
                      category: "SmartPhones",
                      numOfBrands: 18,
                      press: () {},
                    ),
                    SpecialOfferCard(
                      image: "images/family.jpg",
                      category: "Fashion",
                      numOfBrands: 24,
                      press: () {},
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Popular Product',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "see more",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        demoProducts.length,
                        (index) => ProductCard(
                              product: demoProducts[index],
                            ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetion = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRetion;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          children: [
            SizedBox(
              width: width,
              child: AspectRatio(
                aspectRatio: aspectRetion,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    detailsofproduct: product,
                                  )));
                        },
                        child: Image.asset(
                          product.images[0],
                          height: MediaQuery.of(context).size.height * 0.20,
                          width: MediaQuery.of(context).size.width * 0.30,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ])),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\$${product.price}",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.05,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Icon(
                            Icons.favorite,
                            color:
                                product.isFavourite ? Colors.red : Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.7,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(children: [
            Image.asset(
              image,
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.7,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xFF343434).withOpacity(0.4),
                    Color(0xFF343434).withOpacity(.15),
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text.rich(
                  TextSpan(style: TextStyle(color: Colors.white), children: [
                TextSpan(text: "$category\n", style: TextStyle(fontSize: 20)),
                TextSpan(text: "$numOfBrands Brands")
              ])),
            )
          ]),
        ),
      ),
    );
  }
}
