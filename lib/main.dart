// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter App', home: NewApp());
  }
}

// stateful widget
// class RandomWords extends StatefulWidget {
//   const RandomWords({Key? key}) : super(key: key);
//
//   @override
//   _RandomWordsState createState() => _RandomWordsState();
// }
//
// class _RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _fontSize = const TextStyle(fontSize: 10);
//
//   Widget _buildSuggestions() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16),
//       itemBuilder: /*1*/ (context, i) {
//         if (i.isOdd) {
//           return const Divider(); /*2*/
//         }
//
//         final index = i ~/ 2; /*3*/
//         if (index >= _suggestions.length) {
//           _suggestions.addAll(generateWordPairs().take(10)); /*4*/
//         }
//         return _buildRow(_suggestions[index]);
//       },
//     );
//   }
//
//   Widget _buildRow(WordPair pair) {
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _fontSize,
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Startup name generator"),
//       ),
//       body: _buildSuggestions(),
//     );
//   }
// }

//stateful widget 2
class NewApp extends StatefulWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  _NewAppState createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const IconButton(
            icon: Icon(Icons.menu_rounded),
            tooltip: "Menu",
            onPressed: null,
          ),
          title: const Text("Sample App"),
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.home),
              tooltip: "Home",
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child:
                    Image.asset("Images/pexels-francesco-ungaro-1671325.jpg"),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: Image.asset("Images/pexels-jacob-colvin-1761279.jpg"),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: Image.asset("Images/pexels-max-ravier-3331094.jpg"),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: Image.asset("Images/pexels-ruvim-3560044.jpg"),
              )
            ],
          ),
        )));
  }
}
