import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//Define "root widget"
void main() => runApp(new MyApp());//one-line function
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    final _suggestions = <WordPair>[];
    _suggestions.addAll(generateWordPairs().take(10));

    return new MaterialApp
      (
        title: "",
        home: new Scaffold(appBar: new AppBar(
            title: new Text("Card example")
        ),

//          body: list,
          backgroundColor: Colors.white,
        )
    );
  }

}







