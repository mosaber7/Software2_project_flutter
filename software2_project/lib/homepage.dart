import 'package:flutter/material.dart';
import 'package:software2_project/shoppage.dart';
import 'package:software2_project/signinpage.dart';
import 'package:software2_project/singuppage.dart';
import 'package:software2_project/visitor.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: build_homePage_AppBar(),
      body: build_HomePage_Body(context),
    );
  }

  AppBar build_homePage_AppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.redAccent[200],
      title: Text(
        'WELECOME TO BUY KHANA!',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey[50],
          fontSize: 20,
        ),
      ),
      centerTitle: true,
    );
  }

  SingleChildScrollView build_HomePage_Body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.grey[50],
              backgroundImage: AssetImage('assets/poster3_2_234737.png'),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            width: 300,
            height: 60,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signinpage()),
                );
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.redAccent[200],
              child: Text(
                'LOGIN',
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

          //its like the container widget but for buttons
          ButtonTheme(
            minWidth: 300.0,
            height: 60.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Signuppage()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(10)),
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
          ButtonTheme(
            minWidth: 300.0,
            height: 60.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Visitor()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(10)),
              color: Colors.redAccent[200],
              child: Text(
                'SIGN IN AS A VISITOR',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[50],
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
