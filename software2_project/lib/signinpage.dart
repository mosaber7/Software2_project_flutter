import 'package:flutter/material.dart';

class Loginscreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text(
          'SIGNIN',
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
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                'WELECOME TO BUY KHANA!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[570],
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
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
                    border: OutlineInputBorder(), hintText: 'password'),
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
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[250],
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
