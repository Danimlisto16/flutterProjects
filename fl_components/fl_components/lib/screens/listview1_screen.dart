import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    "megaman",
    "daniel",
    "juan",
    "pedro",
    "jose",
    "megaman"
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView Tipo 1")),
      body: ListView(
        children: [
          ...options
              .map((e) => ListTile(
                    leading: const Icon(Icons.access_time),
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward),
                  ))
              .toList(),
          Divider()
          //ListTile(leading: Icon(Icons.access_time), title: Text("hola"))
        ],
      ),
    );
  }
}
