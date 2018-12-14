import 'package:flutter/material.dart';
import 'package:flutter_materialdesignwithtab/Data.dart';


class First extends StatefulWidget {
  @override
  _FirstState createState() => new _FirstState();
}

class _FirstState extends State<First> {

  final List<String>listof=["Apple","Food","iPhone","Samsung","Food","Product","Android","Flutter"];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new ListView.builder(
          itemBuilder: (_,int index)=>Data(this.listof[index]),
        itemCount: this.listof.length,
      ),

    );
  }
}
