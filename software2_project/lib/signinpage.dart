import 'package:flutter/material.dart';
import 'package:software2_project/shoppage.dart';
import 'package:software2_project/singuppage.dart';

class Signinpage extends StatefulWidget {
  @override
  _SigninpageState createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  String p = '';
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController1.dispose();
    myController2.dispose();
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
                controller: myController1,
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
                controller: myController2,
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
                  setState(() {
                    if (myController1.text == '1234' &&
                        myController2.text == '1234') {
                      p = '';
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Shoppage()));
                    } else if (myController1.text.isEmpty ||
                        myController2.text.isEmpty) {
                      p = 'please complete all the fields';
                    } else {
                      p = 'Wrong username or password!';
                    }
                  });
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
            SizedBox(
              height: 10,
            ),
            Text(
              p,
              style: TextStyle(
                color: Colors.redAccent[200],
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
