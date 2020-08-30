import 'package:flutter/material.dart';
import 'package:software2_project/signinpage.dart';

class Signuppage extends StatefulWidget {
  @override
  _SignuppageState createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final email_contorler = TextEditingController();
  final password_contorler = TextEditingController();
  final confirm_contorler = TextEditingController();
  final gender_contorler = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    email_contorler.dispose();
    password_contorler.dispose();
    confirm_contorler.dispose();
    gender_contorler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: build_SignUpPage_AppBar(),
      body: build_SignUpPage_Body(context),
    );
  }

  AppBar build_SignUpPage_AppBar() {
    return AppBar(
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
    );
  }

  SingleChildScrollView build_SignUpPage_Body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(40, 40, 40, 0),
            child: TextField(
              controller: email_contorler,
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
              controller: password_contorler,
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
              controller: confirm_contorler,
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
              controller: gender_contorler,
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
                  if (email_contorler.text.isNotEmpty &&
                      password_contorler.text.isNotEmpty &&
                      gender_contorler.text.isNotEmpty &&
                      confirm_contorler.text == password_contorler.text) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signinpage()));
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
    );
  }
}
