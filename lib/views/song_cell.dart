import 'package:flutter/material.dart';
import '../models/song.dart';

class SongCell extends StatelessWidget {
  final Song song;
  SongCell(this.song);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        new Text("WOOOO")
      ]
    );
  }

}