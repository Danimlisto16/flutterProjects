import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void OnChangeShape() {
    Random rand = Random();
    _borderRadius = BorderRadius.circular(25);
    _color = Color.fromRGBO(
      rand.nextInt(100),
      rand.nextInt(200),
      rand.nextInt(300),
      rand.nextInt(1)+0.1);
    _height = rand.nextInt(500) + 50;
    _width = rand.nextInt(400) + 50;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          /* color: Colors.red, */
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius), 
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => OnChangeShape(),
        child: const Icon(Icons.play_circle_outline),
      ),
    );
  }
}
