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

class RandomWordsState extends State<RandomWords>
{
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('SkinLead list of products'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions()
  {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i)
        {
          if(i.isOdd) return Divider();

          final index = i ~/ 2;
          if(index >= _suggestions.length)
          {
            _suggestions.addAll(generateWordPairs().take(10));
          }

          return _buildRow(_suggestions[index]);

        });
  }

  Widget _buildRow(WordPair pair) {
    return  ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}

class RandomWords extends StatefulWidget
{
  @override
  RandomWordsState createState() => new RandomWordsState();
}







