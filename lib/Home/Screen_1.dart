import 'dart:convert';

import 'package:flutter/material.dart';

class Scrren_1 extends StatefulWidget {
  String name;
  Color c1;
  String p1;
  String i1;

  Scrren_1(this.name, this.c1, this.p1,this.i1);

  @override
  State<Scrren_1> createState() => _Scrren_1State();
}

class _Scrren_1State extends State<Scrren_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.c1,
        title: Text("${widget.name}"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Image.asset("${widget.p1}"),
          ),
          Center(child: Text("${widget.i1}",style: TextStyle(fontSize: 30),)),
        ],
      ),
    );
  }
}
