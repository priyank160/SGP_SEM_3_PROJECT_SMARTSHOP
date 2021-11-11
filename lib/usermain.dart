// ignore_for_file: deprecated_member_use, unnecessary_null_comparison

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/homepage.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

class UserMain extends StatefulWidget {
  const UserMain({Key? key}) : super(key: key);

  @override
  _UserMainState createState() => _UserMainState();
}

class _UserMainState extends State<UserMain> {
  final email = FirebaseAuth.instance.currentUser!.email;
  popupbox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Choose Your Profile Photo'),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.camera)),
                  Text(
                    'Gallery',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
                  Text(
                    'Camera',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Wel Come'),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: MultiLevelDrawer(
          header: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                //color: Theme.of(context).primaryColor,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: const [
                      Color(0xFFFFFFFF),
                      Color(0xFF82D1DF),
                      Color(0xFF00D9FF),
                    ])),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage('images/mickey.png'),
                            // backgroundImage: _imageFile == null
                            //     ? AssetImage('images/mickey.png')
                            //     : FileImage(File(_imageFile.path)),
                          ),
                          Positioned(
                            bottom: 5,
                            right: -5,
                            child: IconButton(
                              onPressed: () {
                                popupbox(context);
                              },
                              icon: Icon(
                                Icons.camera_alt,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                      // Container(
                      //   width: 100,
                      //   height: 100,
                      //   margin: EdgeInsets.only(
                      //     top: 30,
                      //   ),
                      //   decoration: BoxDecoration(
                      //     shape: BoxShape.circle,
                      //     image: DecorationImage(
                      //         image: AssetImage('images/mickey.png'),
                      //         fit: BoxFit.fill),
                      //   ),
                      // ),
                      // Positioned(
                      //     right: 20, bottom: 20, child: Icon(Icons.camera_alt)),
                      Center(
                        child: Text(
                          '$email',
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          children: [
            MLMenuItem(
                content: Text(
                  'Profile',
                  style: TextStyle(fontSize: 20),
                ),
                onClick: () {}),
            MLMenuItem(
                /*leading: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),*/
                trailing: Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(
                      submenuContent: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          "T-shirts",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      onClick: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => OnlyMenTshirt()));
                      }),
                  MLSubmenu(
                      submenuContent: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          "Shirts",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      onClick: () {}),
                  MLSubmenu(
                      submenuContent: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          "Jeans",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      onClick: () {}),
                  MLSubmenu(
                      submenuContent: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          "Footwear",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      onClick: () {}),
                ],
                content: Text(
                  " Male",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onClick: () {}),
            MLMenuItem(
                /*leading: Icon(
                  Icons.person,
                  color: Colors.pink,
                ),*/
                trailing: Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(submenuContent: Text("T-shirts"), onClick: () {}),
                  MLSubmenu(submenuContent: Text("Shirts"), onClick: () {}),
                  MLSubmenu(submenuContent: Text("Jeans"), onClick: () {}),
                  MLSubmenu(submenuContent: Text("Footwear"), onClick: () {}),
                ],
                content: Text(
                  " Female",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onClick: () {}),
            MLMenuItem(
                //leading: Icon(Icons.child_care),
                trailing: Icon(
                  Icons.arrow_right,
                ),
                subMenuItems: [
                  MLSubmenu(submenuContent: Text("T-shirts"), onClick: () {}),
                  MLSubmenu(submenuContent: Text("Shirts"), onClick: () {}),
                  MLSubmenu(submenuContent: Text("Jeans"), onClick: () {}),
                  MLSubmenu(submenuContent: Text("Footwear"), onClick: () {}),
                ],
                content: Text(
                  " Kids",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onClick: () {}),
            MLMenuItem(
                //leading: Icon(Icons.home),
                trailing: Icon(
                  Icons.arrow_right,
                ),
                subMenuItems: [
                  MLSubmenu(submenuContent: Text("Home Store"), onClick: () {}),
                  MLSubmenu(
                      submenuContent: Text("Dining & Kitchen"), onClick: () {}),
                  MLSubmenu(submenuContent: Text("Home Decor"), onClick: () {}),
                  MLSubmenu(submenuContent: Text("BedSheets"), onClick: () {}),
                ],
                content: Text(
                  " Home and Kitchen",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onClick: () {}),
            MLMenuItem(
                //leading: Icon(Icons.settings),
                content: Text(
                  " Settings",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onClick: () {}),
          ]),
      body: HomePage(),
    );
  }

  Widget imageProfile() {
    return Stack(
      children: const [
        CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage('images/mickey.png'),
        ),
        // Positioned(
        //     bottom: 20,
        //     right: 20,
        //     child: InkWell(
        //       onTap: () {},
        //       child: Icon(
        //         Icons.camera_alt,
        //         color: Colors.teal,
        //         size: 28,
        //       ),
        //     ))
      ],
    );
  }
}

// class UserMain extends StatefulWidget {
//   const UserMain({Key? key}) : super(key: key);

//   @override
//   _UserMainState createState() => _UserMainState();
// }

// class _UserMainState extends State<UserMain> {
//   int _selectedIndex = 0;

//   static final List<Widget> _widgetOptions = <Widget>[
//     Dashboard(),
//     Profile(),
//     ChangePassword()
//   ];
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text('Wel come user'),
//             ElevatedButton(
//               onPressed: () async {
//                 await FirebaseAuth.instance.signOut();
//                 Navigator.pushAndRemoveUntil(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => Login(),
//                     ),
//                     (route) => false);
//               },
//               child: Text('Logout'),
//               style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
//             )
//           ],
//         ),
//       ),
//       body: _widgetOptions.elementAt(_selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person), label: 'My Profile'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.settings), label: 'Change password')
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
