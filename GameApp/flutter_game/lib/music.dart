import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class music extends StatelessWidget {
  var player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            player.play('alert.mp3', volume: 50);
          },
          child: Container(
            color: Colors.amber,
            height: 40,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            color: Colors.blue,
            height: 40,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            color: Colors.green,
            height: 40,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            color: Colors.pink,
            height: 40,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            color: Colors.orange,
            height: 40,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            color: Colors.red,
            height: 40,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            color: Colors.purple,
            height: 40,
            width: MediaQuery.of(context).size.width,
          ),
        )
      ],
    );
  }
}
