import 'package:flutter/material.dart';
import 'package:portfolio_akash/home.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home' : (context) => Myhome(),
    },
  ));
}
