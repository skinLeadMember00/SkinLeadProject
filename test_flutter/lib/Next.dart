import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


void main() => runApp(MatFancy());
class MatFancy extends StatelessWidget
{
    MatFancy({@required this.onPressed});
    final GestureTapCallback onPressed;

    @override
    Widget build(BuildContext context)
    {
      return Scaffold(
        appBar: AppBar(
          title: Text('SkinLead list of products'),
        ),
        body: new RawMaterialButton(
          fillColor: Colors.blueAccent,
          splashColor: Colors.blue,
          child: Text("Buy"),
          onPressed: onPressed,
        )
      );

        return new RawMaterialButton(
          fillColor: Colors.blueAccent,
          splashColor: Colors.blue,
          child: Text("Buy"),
          onPressed: onPressed,
        );
    }
}
