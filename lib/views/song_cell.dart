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
            color: Colors.black,
            width: 2.0
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
          new Padding(
            padding: new EdgeInsets.all(15.0),
            child: new Text(
              '${song.title}\n${song.albumName}'
              )
          ) 
        ]
      )
    );
  }

}