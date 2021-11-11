import 'package:flutter/material.dart';

class OnlyMenTshirt extends StatefulWidget {
  const OnlyMenTshirt({Key? key}) : super(key: key);

  @override
  _OnlyMenTshirtState createState() => _OnlyMenTshirtState();
}

class _OnlyMenTshirtState extends State<OnlyMenTshirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('T-shirt'),
      ),
    );
  }
}
