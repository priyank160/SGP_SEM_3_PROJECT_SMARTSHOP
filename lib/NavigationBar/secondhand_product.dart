import 'package:flutter/material.dart';

class SecondHandProduct extends StatefulWidget {
  const SecondHandProduct({Key? key}) : super(key: key);

  @override
  _SecondHandProductState createState() => _SecondHandProductState();
}

class _SecondHandProductState extends State<SecondHandProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              'Second Hand Product',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: TextField(
                decoration: InputDecoration(labelText: 'Name'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: TextField(
                decoration: InputDecoration(labelText: 'Price'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: TextField(
                decoration: InputDecoration(labelText: 'Name'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Upload Your Product Picture'),
                MaterialButton(
                  onPressed: () {},
                  child: Text('Upload'),
                )
              ],
            )
          ],
        ));
  }
}
