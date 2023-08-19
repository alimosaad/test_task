import 'dart:math';

import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index=0;
  List<Color> colorList=[Colors.white,Colors.amber,Colors.blue,Colors.deepOrange,Colors.redAccent,Colors.purpleAccent,
    Colors.lightGreen,Colors.white70, Colors.teal, Colors.brown,
  ];
  void onTapChange(){
    setState(() {
      index=Random().nextInt(colorList.length);
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapChange,
      child: Scaffold(
        backgroundColor: colorList[index],
        appBar: AppBar(

          centerTitle: true,
          title: Text("Test App"),
        ),
        body: Center(
          child: Text("Hey there",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
        ),
      ),
    );
  }
}
