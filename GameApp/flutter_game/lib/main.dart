import 'package:flutter/material.dart';
import 'package:flutter_game/dice.dart';
import 'package:flutter_game/music.dart';

import 'package:flutter_game/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedindex = 0;
  List _widget = [dices(), music(), setting()];
  void changeindex(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            title: Center(child: Text("GAMES")),
            backgroundColor: Colors.teal,
          ),
          body: Center(child: _widget.elementAt(_selectedindex)),
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.amber),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shop),
                  label: 'Music',
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'setting',
                  backgroundColor: Colors.blue)
            ],
            currentIndex: _selectedindex,
            onTap: changeindex,
            selectedLabelStyle: TextStyle(color: Colors.amber),
          )),
    );
  }
}
