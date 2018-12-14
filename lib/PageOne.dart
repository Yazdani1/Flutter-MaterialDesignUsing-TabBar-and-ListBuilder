import 'package:flutter/material.dart';

class Pageone extends StatefulWidget {
  @override
  _PageoneState createState() => new _PageoneState();
}

class _PageoneState extends State<Pageone> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page one"),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
