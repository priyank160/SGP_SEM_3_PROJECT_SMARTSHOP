import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Account/login.dart';
import 'package:flutter_application/Account/signup.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  var email = "";

  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
          (route) => false);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.black,
          content: Text(
            'Please check your mail',
            style: TextStyle(fontSize: 20),
          )));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.black,
            content: Text(
              'No user found for this email',
              style: TextStyle(fontSize: 20),
            )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
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
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    'Reset Link will be sent to your email id !',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                  child: Form(
                      key: _formKey,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                        child: ListView(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 30),
                              child: TextFormField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(fontSize: 20),
                                  //border: OutlineInputBorder()
                                ),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: MaterialButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        setState(() {
                                          email = emailController.text;
                                        });
                                        resetPassword();
                                      }
                                    },
                                    color: Colors.black,
                                    child: Text(
                                      'Send Email',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an Account ? "),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          PageRouteBuilder(
                                            pageBuilder: (context, a, b) =>
                                                Signup(),
                                            transitionDuration:
                                                Duration(seconds: 0),
                                          ),
                                          (route) => false);
                                    },
                                    child: Text(
                                      'Signup',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ))
                              ],
                            )
                          ],
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
