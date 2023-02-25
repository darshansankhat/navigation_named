import 'package:flutter/material.dart';
import 'package:navigation/Home/Home_scrren.dart';
import 'package:navigation/Home/Screen_1.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/":(context) => Country_List(),
          "Information":(context) => Scrren_1(),
        }
    ),
  );
}
