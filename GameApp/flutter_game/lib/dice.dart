import 'package:flutter/material.dart';
import 'package:flutter_game/image.dart';
import 'dart:math';

class dices extends StatefulWidget {
  const dices({Key? key}) : super(key: key);

  @override
  State<dices> createState() => _dicesState();
}

class _dicesState extends State<dices> {
  int left = 1;
  int right = 1;
  int Sum = 0;
  void randomdice() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
    Sum = left + right;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        randomdice();
                      },
                      child: Image.asset('assets/images/dice$left.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        randomdice();
                      },
                      child: Image.asset('assets/images/dice$right.png'),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Text(
                'lucky number',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$Sum',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
