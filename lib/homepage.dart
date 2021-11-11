import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/NavigationBar/changepassword.dart';
import 'package:flutter_application/NavigationBar/dashboard.dart';
import 'package:flutter_application/NavigationBar/myprofile.dart';
import 'package:flutter_application/NavigationBar/cart.dart';
import 'package:flutter_application/NavigationBar/secondhand_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  final GlobalKey _bottomNavigationKey = GlobalKey();

  final List<Widget> _listPages = [
    Dashboard(),
    AddToCart(),
    SecondHandProduct(),
    ChangePassword(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: const <Widget>[
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.dashboard, size: 30, color: Colors.white),
            Icon(Icons.add, size: 30, color: Colors.white),
            Icon(Icons.production_quantity_limits,
                size: 30, color: Colors.white),
            Icon(Icons.rate_review_outlined, size: 30, color: Colors.white),
          ],
          color: Colors.black,
          backgroundColor: Color(0xFF00D9FF),
          buttonBackgroundColor: Colors.black,
          animationDuration: Duration(milliseconds: 400),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: _listPages[_page]);
  }
}
