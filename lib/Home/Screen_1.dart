import 'dart:convert';

import 'package:flutter/material.dart';

class Scrren_1 extends StatefulWidget {
  @override
  State<Scrren_1> createState() => _Scrren_1State();
}

class _Scrren_1State extends State<Scrren_1> {
  @override
  Widget build(BuildContext context) {

    List temp = ModalRoute.of(context)!.settings.arguments as List;

    String name=temp[0];
    Color c1=temp[1];
    String p1=temp[2];
    String i1=temp[3];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: c1,
        title: Text("${name}"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Image.asset("${p1}"),
          ),
          Center(child: Text("${i1}",style: TextStyle(fontSize: 30),)),
        ],
      ),
    );
  }
}
