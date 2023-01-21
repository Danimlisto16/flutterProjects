import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:flutter_counter/screens/counter_screen.dart';
import 'package:flutter_counter/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //todo stateless wid tiene un metodo build
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,

        //home: HomeScreen()
        home: CounterScreen());
  }
}
