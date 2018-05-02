import 'package:flutter/material.dart';
import './models/song.dart';
import './views/song_cell.dart';
//import 'package:iu_appreciation/views/iu_carousel.dart';

void main() => runApp(new IUAppreciationApp());

class IUAppreciationApp extends StatefulWidget {

  @override
    State<StatefulWidget> createState() {
      return new IUAppreciationState();
    }
}

class IUAppreciationState extends State<IUAppreciationApp> {

  static final descriptionString = 'An independent Korean artist, IU is awesome. She has a nice voice and a seemingly nice personality. She was on Running Man. If I met her, I would probably need a translator to talk to her.';
  
  static final kSongs = const <Song>[
    const Song(audioFile: "http://www.rxlabz.com/labz/audio2.mp3", title: "Full Stop", albumName: "Palette"),
    const Song(audioFile: "http://www.rxlabz.com/labz/audio.mp3", title: "Obliviate", albumName: "Modern Times"),
    const Song(audioFile: "https://soundcloud.com/late-ride/iu-paletteim-feeling-25-version/download/mp3", title: "23", albumName: "Chat-shire")
  ];

  Padding descriptionText = new Padding(
                  padding: new EdgeInsets.all(15.0),
                    child: new Text(
                    descriptionString,
                    textAlign: TextAlign.center,
                    style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
                  ) 
                );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('I ❤️ IU', style: new TextStyle(color: Colors.black, fontSize: 30.0)),
          backgroundColor: Colors.white,
        ),
        body:
          new Container(
            child: new ListView(
              children: [
                new Image.asset('images/iu_carousel_1.jpg'),
                descriptionText,
                new SongCell(kSongs[0]),
                new SongCell(kSongs[1]),
                new SongCell(kSongs[2])
              ]
            )
          )
      )
    );
  }
}
