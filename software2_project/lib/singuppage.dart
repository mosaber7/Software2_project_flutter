import 'package:flutter/material.dart';
import 'package:software2_project/shoppage.dart';
import 'package:software2_project/signinpage.dart';

class Signuppage extends StatefulWidget {
  @override
  _SignuppageState createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final emailcontorler = TextEditingController();
  final passwordcontorler = TextEditingController();
  final confirmcontorler = TextEditingController();
  final gendercontorler = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailcontorler.dispose();
    passwordcontorler.dispose();
    confirmcontorler.dispose();
    gendercontorler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[200],
        title: Text(
          'SIGN UP',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[50],
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(40, 40, 40, 0),
              child: TextField(
                controller: emailcontorler,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'EMAIL'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: passwordcontorler,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'PASSWORD'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: confirmcontorler,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'CONFIRM PASSWORD'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: gendercontorler,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'GENDER: Male / Female'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 330,
              height: 60,
              child: RaisedButton(
                onPressed: () {
                  //bot working*******
                  setState(() {
                    if (emailcontorler.text.isNotEmpty &&
                        passwordcontorler.text.isNotEmpty &&
                        gendercontorler.text.isNotEmpty &&
                        confirmcontorler.text == passwordcontorler.text) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => signinpage()));
                    } else {}
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.redAccent[200],
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[50],
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'by pressing the "sign up" button you agree to the terms and policies',
              style: TextStyle(fontSize: 10, color: Colors.grey[700]),
            )
          ],
        ),
      ),
    );
  }
}
