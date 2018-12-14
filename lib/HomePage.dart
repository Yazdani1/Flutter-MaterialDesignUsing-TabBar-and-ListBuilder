import 'package:flutter/material.dart';
import 'pages/FirstPage.dart' as fp;
import 'pages/SecondPage.dart' as sp;
import 'pages/ThirdPage.dart' as tp;
import 'pages/FourthPage.dart' as fp;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    tabController=new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Material Design"),
        backgroundColor: Colors.green,

        bottom: new TabBar(
          controller: tabController,
          indicatorColor: Colors.lime,
          indicatorWeight: 5.0,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.title),),
            new Tab(icon: new Icon(Icons.add_location),),
            new Tab(icon: new Icon(Icons.cached),),
            new Tab(icon: new Icon(Icons.add_a_photo),)
          ],
        ),

      ),//appbar

      body: new TabBarView(
          controller: tabController,
        children: <Widget>[
          new fp.First(),
          new sp.Second(),
          new tp.Third(),
          new fp.Fourth()
        ],
      ),

    );
  }
}

