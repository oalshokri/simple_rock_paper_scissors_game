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
        body: const GamePage(),
      ),
    ),
  );
}

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
