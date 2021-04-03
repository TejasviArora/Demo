import 'package:bank_ui/expenses.dart';

import 'header.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import "CardSection.dart";

void main() {
  runApp(MaterialApp(
      home: homePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Circular',
      )));
}

// ignore: camel_case_types
class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(

        children: <Widget>[
          SizedBox(
          height: 20.0,
          ),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(
            child: Container(child: CardSection()),
          ),
          Expanded(
            child: ExpenseSection(),
          ),
        ],
      ),
    );
  }
}
