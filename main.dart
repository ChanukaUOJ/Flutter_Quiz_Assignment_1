// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'textcontrol.dart';
import './text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final textCollection = const [
    "First Text Line",
    "Second Text Line",
    "Third Text Line",
    "Fourth Text Line",
    "Fifth Text Line",
    "Sixth Text Line",
    "Seventh Text Line",
    "Eighth Text Line",
    "Nine Text Line",
    "Tenth Text Line"
  ];

  var collectionIndex = 0;

  void _clickButton() {
    setState(() {
      collectionIndex++;
      //const print("Good to go!");
    });
  }

  void _resetIndex() {
    setState(() {
      collectionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Assignment One!"),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 29, 0, 0),
        ),
        body: collectionIndex < textCollection.length
            ? Column(children: [
                TextSplit(textCollection, collectionIndex),
                TextControl(_clickButton),
              ])
            : Container(
                margin: const EdgeInsets.only(top: 200.0),
                child: Column(
                  children: [
                    const Text(
                      "Move to First Line Again",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    TextControl(_resetIndex),
                  ],
                ),
              ),
      ),
    );
  }
}
