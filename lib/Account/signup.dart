// ignore_for_file: avoid_print, empty_catches

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Account/login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  var email = "";
  var password = "";
  var confirmPassword = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  registration() async {
    if (password == confirmPassword) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        print(userCredential);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.black,
            content: Text(
              'Registered Sucessfull. Please Login...',
              style: TextStyle(fontSize: 20),
            )));
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weal-password') {
          //print('Password Provided is too week');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.black,
              content: Text(
                'Password Provided is too week',
                style: TextStyle(fontSize: 20),
              )));
        } else if (e.code == 'email-already-in-use') {
          //print('Account Already exists');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.black,
              content: Text(
                'Account Already exists',
                style: TextStyle(fontSize: 20),
              )));
        }
      }
    } else {
      //print("Password and confirm Password doesn't match");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.black,
          content: Text(
            "Password and confirm Password doesn't match",
            style: TextStyle(fontSize: 20),
          )));
    }
  }

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
        child: Form(
            key: _formKey,
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ListView(children: [
                  Image.asset(
                    'images/on_b2.png',
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: TextFormField(
                      autofocus: false,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(fontSize: 20),
                          //border: OutlineInputBorder(),
                          errorStyle:
                              TextStyle(color: Colors.redAccent, fontSize: 15)),
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Email';
                        } else if (!value.contains('@')) {
                          return 'Please Enter Valid Email';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: TextFormField(
                      autofocus: true,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: 20),
                          //border: OutlineInputBorder(),
                          errorStyle:
                              TextStyle(color: Colors.redAccent, fontSize: 15)),
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Paaword';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: TextFormField(
                      autofocus: false,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(fontSize: 20),
                          //border: OutlineInputBorder(),
                          errorStyle:
                              TextStyle(color: Colors.redAccent, fontSize: 15)),
                      controller: confirmPasswordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Paaword';
                        }
                        return null;
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        child: MaterialButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                email = emailController.text;
                                password = passwordController.text;
                                confirmPassword =
                                    confirmPasswordController.text;
                              });
                              registration();
                            }
                          },
                          color: Colors.black,
                          child: Text(
                            'Signup',
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an Account ?'),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            Login(),
                                    transitionDuration: Duration(seconds: 0)));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ))
                    ],
                  )
                ]))),
      ),
    ));
  }
}
