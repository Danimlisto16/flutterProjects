import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //propiedades
    const fontSize30 = TextStyle(fontSize: 25);
    int counter = 0;

    return Scaffold(
      //prepara el sitio para la app para empezar a trabajar
      appBar: AppBar(
        title: const Text("hola"),
        elevation: 10.0,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Clicks counter', style: fontSize30),
            Text("$counter", style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          print("Hola mundo $counter");
        },
      ),
    );
  }
}
