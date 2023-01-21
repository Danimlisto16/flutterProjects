import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    "megaman",
    "daniel",
    "juan",
    "edro",
    "ose",
    "megaman1",
    "mgman"
        "edro",
    "je",
    "mean",
    "meaman"
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 2"),
        elevation: 10.0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          leading: const Icon(Icons.ac_unit_sharp),
          onTap: () {
            final game = options[i];
            print(game);
          },
        ),
        separatorBuilder: (_, __) => const Divider(
          color: Color.fromARGB(255, 240, 3, 3),
        ),
      ),
    );
  }
}
