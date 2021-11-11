// ignore_for_file: prefer_typing_uninitialized_variables, no_logic_in_create_state

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application/Product/addtocart.dart';
import 'package:flutter_application/Product/product.dart';

var sellingsize;

class DetailsScreen extends StatefulWidget {
  final Product detailsofproduct;
  const DetailsScreen({Key? key, required this.detailsofproduct})
      : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState(detailsofproduct);
}

class _DetailsScreenState extends State<DetailsScreen> {
  final Product detailsofproduct;
  int count = 1;
  void addcount() {
    setState(() {
      count++;
    });
  }

  void removecount() {
    setState(() {
      count--;
      if (count < 1) count = 1;
    });
  }

  void changeFavourite() {
    setState(() {
      detailsofproduct.isFavourite =
          detailsofproduct.isFavourite ? false : true;
    });
  }

  void addtoCart() {
    setState(() {
      detailsofproduct.inCart = true;
    });
  }

  _DetailsScreenState(this.detailsofproduct);

  popupbox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Worning !!!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10),
                  child: Row(
                    children: const [
                      Text(
                        'Please select size',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            actions: [
              MaterialButton(
                color: Colors.black,
                minWidth: 50,
                height: 40,
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text(
                  'OK',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    int selectedColor = 0;

    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.5,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
        title: Center(
          child: Text(
            detailsofproduct.title,
          ),
        ),
        backgroundColor: Colors.black,
      ),
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
                padding: const EdgeInsets.fromLTRB(0, 15, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      detailsofproduct.rating.toString(),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(25),

              //   child: Stack(children: [
              //     Image.asset(
              //       detailsofproduct.images[0],
              //       height: MediaQuery.of(context).size.height * 0.3,
              //       width: MediaQuery.of(context).size.width * 0.6,
              //       fit: BoxFit.cover,
              //     ),
              //   ]),
              // ),

              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, -1),
                          blurRadius: 20)
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Stack(children: [
                    Image.asset(
                      detailsofproduct.images[0],
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.6,
                      fit: BoxFit.cover,
                    ),
                  ]),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     ClipRRect(
              //       borderRadius: BorderRadius.circular(5),
              //       child: Image.asset(
              //         detailsofproduct.images[0],
              //         height: 40,
              //       ),
              //     )
              //   ],
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      detailsofproduct.title,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "₹${detailsofproduct.price}",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 40,
                      width: 50,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            shape: BoxShape.rectangle,
                            color: Colors.black26),
                        // child: Icon(
                        //   Icons.favorite,
                        //   color: detailsofproduct.isFavourite
                        //       ? Colors.red
                        //       : Colors.white,
                        // )
                        child: IconButton(
                          onPressed: () {
                            changeFavourite();
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: detailsofproduct.isFavourite
                                ? Colors.red
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    detailsofproduct.description,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ...List.generate(
                      detailsofproduct.colors.length,
                      (index) => ColorDot(
                            color: detailsofproduct.colors[index],
                            isSelected: selectedColor == index,
                          )),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Size :',
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  ...List.generate(
                      detailsofproduct.size.length,
                      (index) => ProductSize(
                            size: detailsofproduct.size[index],
                          )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        removecount();
                      },
                      icon: Icon(Icons.remove)),
                  Text(
                    '$count',
                    style: TextStyle(fontSize: 20),
                  ),
                  IconButton(
                      onPressed: () {
                        addcount();
                      },
                      icon: Icon(Icons.add)),
                ],
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.5,
                child: MaterialButton(
                    onPressed: () {
                      addtoCart();
                      sellingsize == null
                          ? popupbox(context)
                          : Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddtoCart(
                                      productimage: detailsofproduct.images[0],
                                      productname: detailsofproduct.title,
                                      productprice: detailsofproduct.price,
                                      quntity: count,
                                      finalsize: sellingsize)));
                    },
                    color: Colors.black,
                    splashColor: Colors.blue[100],
                    child: Text(
                      'Buy Now',
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({Key? key, required this.color, this.isSelected = false})
      : super(key: key);

  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        padding: isSelected ? EdgeInsets.all(0) : EdgeInsets.all(2),
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.07,
        decoration: BoxDecoration(
            //color: detailsofproduct.colors[0],
            shape: BoxShape.circle,
            border: Border.all(color: color)),
        child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}

class ProductSize extends StatelessWidget {
  const ProductSize({Key? key, required this.size}) : super(key: key);

  final String size;
  @override
  Widget build(BuildContext context) {
    void setfinalsize() {
      sellingsize = size;
    }

    return Padding(
      padding: const EdgeInsets.only(left: 11),
      child: InkWell(
        splashColor: Colors.white,
        onTap: () {
          setfinalsize();
        },
        child: Container(
          //height: MediaQuery.of(context).size.height * 0.05,
          //width: MediaQuery.of(context).size.width * 0.08,
          height: 35,
          width: 45,
          decoration: BoxDecoration(
              color: Colors.black45,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Center(
            child: Text(
              size,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
