import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  final email = FirebaseAuth.instance.currentUser!.email;
  final creationTime = FirebaseAuth.instance.currentUser!.metadata.creationTime;

  final user = FirebaseAuth.instance.currentUser;
  verfyEmail() async {
    if (user != null && !user!.emailVerified) {
      await user!.sendEmailVerification();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.black,
          content: Text(
            'Verification email has been sent',
            style: TextStyle(fontSize: 20),
          )));
    }
  }

  var userName = "";
  var mobileNumber = "";
  var address = "";

  final userNameController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final addressController = TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    mobileNumberController.dispose();
    addressController.dispose();
    super.dispose();
  }

  changeProfilePopup(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Update Your Profile'),
            content: SizedBox(
              height: 200,
              width: 100,
              child: Column(
                children: const [
                  TextField(
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Mobile Number'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Address'),
                  )
                ],
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          userName = userNameController.text;
                          mobileNumber = mobileNumberController.text;
                          address = addressController.text;
                        });
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/mickey.png'),
                  radius: 75,
                ),
                Positioned(
                    right: -5,
                    bottom: 5,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.camera_alt)))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Container(
            //   height: 40,
            //   width: MediaQuery.of(context).size.width - 80,
            //   decoration: BoxDecoration(
            //     color: Colors.black26,
            //     borderRadius: BorderRadius.all(Radius.circular(5)),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Text(
            //         'User ID : ',
            //         style: TextStyle(fontSize: 15),
            //       ),
            //       Text(
            //         uid,
            //         style: TextStyle(fontSize: 15),
            //       )
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 80,
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Email : ',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '$email',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            user!.emailVerified
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text('Verify'),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: TextButton(
                          onPressed: () {
                            verfyEmail();
                          },
                          child: Text('Verify Email'),
                        ),
                      ),
                    ],
                  ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 80,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Created Time : ',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '$creationTime',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 80,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'User Name : ',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    userName,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 80,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Mobile Number : ',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    mobileNumber,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 80,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Address : ',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    address,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: MaterialButton(
                onPressed: () {
                  changeProfilePopup(context);
                },
                child: Text(
                  'Edit',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
