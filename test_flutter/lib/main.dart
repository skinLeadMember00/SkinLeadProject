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

    var list = ListView.builder(
      itemBuilder: (context, position)
      {
        return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                      child: Text(
                        _suggestions[position].asPascalCase,
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                      child: Text(
                        _suggestions[position].asPascalCase,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "5m",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 2.0,
              color: Colors.grey,
            )
          ],
        );
      },
      itemCount: _suggestions.length,
    );


    return new MaterialApp
      (
        title: "",
        home: new Scaffold(appBar: new AppBar(
            title: new Text("Card example")
        ),

          body: list,
          backgroundColor: Colors.white,
        )
    );
  }

}







