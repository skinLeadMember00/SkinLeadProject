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

    var card = ListView.builder
      (
      itemBuilder: (context, i) {
        return Card
          (
          child: new Column(
            children: <Widget>[
              new ListTile(
                leading: new Icon(Icons.photo, color: Colors.blue,size: 40,),
                title: new Text(_suggestions[i].asPascalCase, style: new TextStyle(fontWeight: FontWeight.w400),),
                subtitle: new Text("This is subtitle"),
              ),

              new Divider(color: Colors.blue, indent: 16.0,),
            ],
          ),
        );
      },
      itemCount: _suggestions.length,
    );

    final sizedBox = new Container(
      margin: new EdgeInsets.only(left: 20, right: 20),
      child: new SizedBox(
        //height: 220.0,
        child: card,

      ),
    );
    final center = new Center(
      child: sizedBox,

    );

    return new MaterialApp(
        title: "",
        //      home: new Text("Add Google fonts to Flutter App")
        home: new Scaffold(appBar: new AppBar(
            title: new Text("Card example")
        ),
          body: center,
          backgroundColor: Colors.indigo,
        )
    );
  }
}






