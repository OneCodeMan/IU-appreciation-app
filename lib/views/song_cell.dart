import 'package:flutter/material.dart';
import '../models/song.dart';
import 'package:audioplayer/audioplayer.dart';

class SongCell extends StatefulWidget {
  final Song song;

  SongCell(this.song);

  @override
  State<StatefulWidget> createState() {
    return new SongCellState();
  }

}

class SongCellState extends State<SongCell> {

  AudioPlayer audioPlayer = new AudioPlayer();

  bool _isPlaying = false;

  void _handlePlayPause() {
    setState(() {
      _isPlaying = !_isPlaying;
    });

    if (_isPlaying) {
      audioPlayer.pause();
    } else {
      audioPlayer.play(widget.song.audioFile);
    }

  }

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
            onPressed: _handlePlayPause,
            iconSize: 64.0,
            icon: _isPlaying? new Icon(Icons.pause_circle_outline) : new Icon(Icons.play_circle_outline),
            color: Colors.blue
          ),
          new Column(
            children: [
            new Padding(
              padding: new EdgeInsets.all(15.0),
              child: new Text(
                '${widget.song.title}\n${widget.song.albumName}',
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