import 'package:flutter/material.dart';

class Signuppage extends StatelessWidget {
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
                onPressed: () {},
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
