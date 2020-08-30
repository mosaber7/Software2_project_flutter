import 'package:flutter/material.dart';
import 'package:software2_project/product.dart';

class Customer {
  String username, password;
  List<Product> products_List;
  bool intialization = false;

  Customer(String username, String password) {
    this.username = username;
    this.password = password;
    if (!intialization) {
      products_List = [];
      const intialization = true;
    }
  }

  List<Product> getListOfProducts() {
    return Customer('1234', '1234').products_List;
  }

  //check if the name and the password are correct (Demo)
  bool CheckValid() {
    if (username == '1234' && password == '1234') {
      return true;
    }
    return false;
  }

  //add the pressed items to my Mycart list
  void addItemToMyproductsList(int index) {
    products_List.add(products[index]);
  }
}
