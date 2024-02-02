import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XyloPhone extends StatefulWidget {
  const XyloPhone({super.key});

  @override
  State<XyloPhone> createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {


  List<ColorSwatch<int>> rainbowColor = [ Colors.red, Colors.orange, Colors.greenAccent, Colors.green, Colors.teal, Colors.blue, Colors.blueAccent ];
  var index = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Xylo phone'),
        centerTitle: true,
      ),
      body: Column(
        children: rainbowColor.map<FilledButton>((color) => createNoteButton(index + 1, color)).toList(),
      ),
    );
  }

  createNoteButton(int noteNumber, ColorSwatch<int> color) {
      return FilledButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith((states) => color),
        ),
        onPressed: () {
          AudioCache.instance = AudioCache(prefix: '');

          final audioPlayer = AudioPlayer();
          audioPlayer.play(AssetSource('assets/notes/note$noteNumber.wav'));
        },
        child: Container(
          color: color,
        )
      );
  }
}
