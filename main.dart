import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Piano());

class Piano extends StatelessWidget {
  Expanded chnfun({Color color, int sn}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$sn.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text('Xylophone_Flutter')),
          backgroundColor: Colors.teal,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                chnfun(color: Colors.red, sn: 1),
                chnfun(color: Colors.orange, sn: 2),
                chnfun(color: Colors.yellow, sn: 3),
                chnfun(color: Colors.green, sn: 4),
                chnfun(color: Colors.blue, sn: 5),
                chnfun(color: Colors.indigo, sn: 6),
                chnfun(color: Colors.purple, sn: 7),
                Center(
                  child: Text(
                    'Developed by AHTESHAM ZAIDI',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'FingerPaint',
                        fontSize: 10),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
