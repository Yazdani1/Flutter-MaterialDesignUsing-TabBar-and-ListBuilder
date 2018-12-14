import 'package:flutter/material.dart';

import 'package:flutter_materialdesignwithtab/PageOne.dart';
import 'package:flutter_materialdesignwithtab/PageTwo.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => new _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Container(
        child: new Center(

          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new ButtonTheme(
                minWidth: 300.0,
                height: 50.0,
                  child: new RaisedButton(
                      child: new Text("Click here",style: new TextStyle(fontSize: 20.0),),
                      shape: StadiumBorder(),
                      color: Colors.deepOrange,
                      textColor: Colors.white,
                      onPressed: (){
                        Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext c)=>Pageone()));
                      }
                  )
              ),
              new Padding(padding: EdgeInsets.all(10.0)),
              new ButtonTheme(
                  minWidth: 300.0,
                  height: 50.0,
                  child: new RaisedButton(
                      child: new Text("Click 2",style: new TextStyle(fontSize: 20.0),),
                      shape: StadiumBorder(),
                      color: Colors.deepOrange,
                      textColor: Colors.white,
                      onPressed: (){
                        Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext c)=>PageTwo()));
                      }
                  )
              ),


            ],
          ),
        ),
      ),

    );
  }
}
