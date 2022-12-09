import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo.shade900,
        appBar: AppBar(
          title: const Text('Rock Paper Scissors'),
          backgroundColor: Colors.indigo.shade900,
        ),
        body: GamePage(),
      ),
    ),
  );
}

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  List<String> images = ['paper_btn', 'rock_btn', 'scisor_btn'];

  late String name;
  late String robot;

  @override
  void initState() {
    name = images[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    robot = images[Random().nextInt(3)];
    return Center(
      child: Column(
        children: [
          CircleAvatar(),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    print(name);
                    setState(() {
                      name = images[Random().nextInt(3)];
                    });
                  },
                  child: Image.asset('images/$name.png'),
                ),
              ),
              Expanded(
                child: Image.asset('images/$robot.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
