import 'package:flutter/material.dart';
import 'package:flutter_application/Payment/payment.dart';

class AddtoCart extends StatelessWidget {
  final String productimage, productname;
  final double productprice;
  final int quntity;
  final String finalsize;
  const AddtoCart(
      {Key? key,
      required this.productimage,
      required this.productname,
      required this.productprice,
      required this.quntity,
      required this.finalsize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 23;
    double price = quntity * productprice;
    double charge = price * 0.15;
    charge = double.parse((charge).toStringAsFixed(2));
    double total = price + charge;
    total = double.parse((total).toStringAsFixed(2));
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
          title: Center(child: Text('Your Cart')),
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, -1),
                                    blurRadius: 20)
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Stack(children: [
                              Image.asset(
                                //cartproduct.images[0],
                                productimage,
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                width: MediaQuery.of(context).size.width * 0.5,
                                fit: BoxFit.cover,
                              ),
                            ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            productname +
                                '\n' +
                                "₹$productprice" +
                                '\nQuntity : $quntity\n' +
                                'Size : $finalsize',
                            style: TextStyle(fontSize: w),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.33),
                  Container(
                    height: 225,
                    //width: double.infinity,
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        //borderRadius: BorderRadius.all(Radius.circular(25)),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, -1),
                              blurRadius: 20)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Product Cost',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('₹$price', style: TextStyle(fontSize: 20))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Deliver Cost',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('₹$charge', style: TextStyle(fontSize: 20))
                            ],
                          ),
                          Container(
                            height: 2,
                            decoration: BoxDecoration(color: Colors.black),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Price',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text('₹$total',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Payment(amount: total)));
                                },
                                color: Colors.black,
                                splashColor: Colors.blue[100],
                                child: Text(
                                  'Pay Now',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0))),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )),
        ));
  }
}
