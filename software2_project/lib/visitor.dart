import 'package:flutter/material.dart';
import 'package:software2_project/customer.dart';
import 'package:software2_project/product.dart';
import 'package:software2_project/shoppage.dart';

class Visitor extends StatefulWidget {
  @override
  _VisitorState createState() => _VisitorState();
}

class _VisitorState extends State<Visitor> {
  //listeners to listen to the input of the name and password text fields
  final username_controller = TextEditingController();
  final Email_controller = TextEditingController();
  String username, email;
  List<Product> myproducts;
  Customer customer;

  //string to display it in case the password or the name were not valid, look to the validality functions.
  String error_message = '';

// Clean up the controller when the widget is disposed.
  @override
  void dispose() {
    username_controller.dispose();
    Email_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: build_SignIn_AppBar(),
      body: build_SignInPage_Body(context),
    );
  }

//function to build the App bar and display it
  AppBar build_SignIn_AppBar() {
    return AppBar(
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
    );
  }

//function to build the body of the page and diplay it
  SingleChildScrollView build_SignInPage_Body(BuildContext context) {
    return SingleChildScrollView(
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
              controller: username_controller,
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
              controller: Email_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'email'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 330,
            height: 60,
            //signin button
            child: RaisedButton(
              onPressed: () {
                //bot working*******
                setState(() {
                  if (CheckNameAndPassAreEmpty()) {
                    error_message = 'please complete all the fields';
                  } else {
                    customer = new Customer(
                        username_controller.text, Email_controller.text);
                    error_message = '';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Shoppage(customer: customer)));
                  }
                });
              },

              //sign in button
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'SIGN IN AS VISITOR',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent[200],
                  fontSize: 20,
                ),
              ),
            ),
          ),
          //invisable box
          SizedBox(
            height: 10,
          ),

          //displayed in case the username or password were not valid
          Text(
            error_message,
            style: TextStyle(
              color: Colors.redAccent[200],
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }

//check if the name and password filds are left empty or not
  bool CheckNameAndPassAreEmpty() {
    if (username_controller.text.isEmpty || Email_controller.text.isEmpty) {
      return true;
    }
    return false;
  }
}
