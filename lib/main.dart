import 'package:flutter/material.dart';
//import 'package:iu_appreciation/views/iu_carousel.dart';

void main() => runApp(new IUAppreciationApp());

class IUAppreciationApp extends StatefulWidget {

  @override
    State<StatefulWidget> createState() {
      return new IUAppreciationState();
    }
}

class IUAppreciationState extends State<IUAppreciationApp> {

  String descriptionText = 'orem Ipsum is simply dummy Ipsum is simply dummy  Ipsum is simply dummy  Ipsum is simply dummy  Ipsum is simply dummy  Ipsum is simply dummy  Ipsum is simply dummy  Ipsum is simply dummy  Ipsum is simply dummy  Ipsum is simply dummy  Ipsum is simply dummy  text of the printing and typesetting industry. Lorem Ipsum has been the industry';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("I ❤️ IU")
        ),
        body:
          new Container(
            child: new Column(
              children: [
                new Image.asset("images/iu_carousel_1.jpg"),
                new Text(
                  descriptionText,
                  textAlign: TextAlign.center,
                  style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 40.0),
                  
                ) 
              
              ]
            )
          )
      )
    );
  }
}
