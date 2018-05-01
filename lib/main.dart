import 'package:flutter/material.dart';
import 'package:carousel/carousel.dart';
//import './views/video_cell.dart';

void main() => runApp(new IUAppreciationApp());

class IUAppreciationApp extends StatefulWidget {

  @override
    State<StatefulWidget> createState() {
      return new IUAppreciationState();
    }
}

class IUAppreciationState extends State<IUAppreciationApp> {
  
  Widget IUCarousel = new Container(
    child: new Carousel(
      children: [
        new AssetImage('images/iu_carousel_1.jpg'),
        new AssetImage('images/iu_carousel_2.jpg'),
        new AssetImage('images/iu_carousel_3.jpg')
      ].map((bgImg) => 
        new Image(image: bgImg, width: 1500.0, height: 1500.0, fit: BoxFit.cover))
        .toList(),
      displayDuration: const Duration(seconds: 1),
      
    ),
  );

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
              children: [IUCarousel],
            ),
            new ListView(
              children: [
                new Text("WASSSUPPPjjjPP"),
              ],
            ),
          ]
        ),
      ),
    );
  }
}
