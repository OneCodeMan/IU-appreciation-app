import 'package:flutter/material.dart';
import '../models/song.dart';

class SongCell extends StatelessWidget {
  final Song song;
  SongCell(this.song);

  //var _isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        border: new Border(
          top: new BorderSide(
            color: Colors.grey,
            width: 1.0
          ),
          bottom: new BorderSide(
            color: Colors.grey,
            width: 1.0
          )
        )
      ),
      child: new Row(
        children: [
          new IconButton(
            onPressed: () { 
              print("Pressed");
            },
            iconSize: 64.0,
            icon: new Icon(Icons.play_circle_outline),
            color: Colors.blue
          ),
          new Column(
            children: [
            new Padding(
              padding: new EdgeInsets.all(15.0),
              child: new Text(
                '${song.title}\n${song.albumName}',
                style: new TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.w700
                ),
              )
            ) 
            ],
          )
        ]
      )
    );
  }

}