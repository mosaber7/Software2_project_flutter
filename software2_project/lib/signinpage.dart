import 'package:flutter/material.dart';
import 'package:software2_project/shoppage.dart';
import 'package:software2_project/singuppage.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[200],
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
                  color: Colors.redAccent[200],
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
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'username'),
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
                onPressed: () {
                  //bot working*******

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => shoppage()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent[200],
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
