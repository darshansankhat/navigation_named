import 'package:flutter/material.dart';
import 'package:navigation/Home/Screen_1.dart';

class Country_List extends StatefulWidget {
  const Country_List({Key? key}) : super(key: key);

  @override
  State<Country_List> createState() => _Country_ListState();
}

class _Country_ListState extends State<Country_List> {
  List p1 = [
    "assets/image/1.jpg",
    "assets/image/2.jpg",
    "assets/image/3.jpg",
    "assets/image/4.jpg",
    "assets/image/5.jpg",
    "assets/image/6.jpg",
    "assets/image/7.jpg",
    "assets/image/8.jpg",
    "assets/image/9.jpg",
    "assets/image/10.jpg",
  ];
  List l1 = [
    "India",
    "Russia",
    "Canada",
    "China",
    "U S A",
    "Brazil",
    "Australia",
    "Argentina",
    "Korea",
    "Japan",
  ];
  List c1 = [
    Colors.orange,
    Colors.blue,
    Colors.red,
    Colors.amber,
    Colors.blue.shade900,
    Colors.yellow,
    Colors.blueAccent,
    Colors.blue.shade300,
    Colors.red,
    Colors.black,
  ];
  List i1 = [
    "India, officially the Republic of India (Hindi: Bhārat Gaṇarājya), is a country in South Asia. It is the seventh-largest country by area, the second-most ",
    "Russia, country that stretches over a vast expanse of eastern Europe and northern Asia. Once the preeminent republic of the Union of Soviet Socialist",
    "Canada is a country in North America. Its ten provinces and three territories extend from the Atlantic Ocean to the Pacific Ocean and northward into the ",
    "It is the world's most populous country, with a population exceeding 1.4 billion, slightly ahead of India. China spans the equivalent of five time zones and ",
    "The United States of America (U.S.A. or USA), commonly known as the United States (U.S. or US) or America, is a country primarily located in North America.",
    "At 8.5 million square kilometers (3,300,000 sq mi) and with over 217 million people, Brazil is the world's fifth-largest country by area and the seventh",
    "4 days ago — Australia, the smallest continent and one of the largest countries on Earth, lying between the Pacific and Indian oceans in the Southern ",
    "4 days ago — Argentina, country of South America, covering most of the southern portion of the continent. The world's eighth largest country, Argentina ",
    "South Korea is a regional power and a highly developed country, with its economy being ranked as the world's thirteenth-largest by nominal GDP and the",
    "Japan is an island country in East Asia. It is situated in the northwest Pacific Ocean and is bordered on the west by the Sea of Japan, extending from the0",
  ];
  int i = 0;
  String data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Country Information"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: l1
                .asMap()
                .entries
                .map(
                  (e) => InkWell(
                    onTap: () {

                      List temp=[l1[e.key],c1[e.key],p1[e.key],i1[e.key]];

                      Navigator.pushNamed(context,"Information",arguments: temp);
                    },
                    child: Information(
                      l1[e.key],
                      c1[e.key],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget Information(String data, c1) {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "$data",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: c1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(
              Icons.list,
              size: 40,
              color: c1,
            ),
          ),
        ],
      ),
    );
  }
}
