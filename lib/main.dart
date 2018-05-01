import 'package:flutter/material.dart';
import 'package:iu_appreciation/views/iu_carousel.dart';

void main() => runApp(new IUAppreciationApp());

class IUAppreciationApp extends StatefulWidget {

  @override
    State<StatefulWidget> createState() {
      return new IUAppreciationState();
    }
}

class IUAppreciationState extends State<IUAppreciationApp> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("I ❤️ IU")
        ),
        body: new Stack(
          children: <Widget>[
            new PageView(
              children: [new IUCarousel]
            ),
            new ListView(
              children: [
                new Text("Tigers Jaw"),
              ],
            ),
          ]
        ),
      ),
    );
  }
}
