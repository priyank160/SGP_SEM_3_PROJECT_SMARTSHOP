import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final double amount;
  const CreditCard({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          title: Center(child: Text('Credit Card Payment')),
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
                  Center(
                    child: Image.asset(
                      'images/creditcard.png',
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        //border: OutlineInputBorder(),
                        labelText: 'Credit Card Number',
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            //border: OutlineInputBorder(),
                            labelText: 'MM/YY',
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            //border: OutlineInputBorder(),
                            labelText: 'CVV',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        //border: OutlineInputBorder(),
                        labelText: 'Card Holder Name',
                      ),
                    ),
                  ),
                  // Container(
                  //   width: MediaQuery.of(context).size.width * 0.45,
                  //   height: 50,

                  //   decoration: BoxDecoration(
                  //     border: Border(right:),
                  //     borderRadius: BorderRadius.all(Radius.circular(5)),
                  //   ),
                  //   //transform: Matrix4.rotationZ(0.05),
                  // ),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                      color: Colors.black,
                      minWidth: 150,
                      height: 50,
                      splashColor: Colors.blue[100],
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => Homepage(),
                        //     ));
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ],
              ),
            )));
  }
}
