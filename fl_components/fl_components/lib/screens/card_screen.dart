import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CardScreen"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
          children: const [
            CustomCardType1(),
            CustomCardType2(
              imageRoute: "https://wallpaper.dog/large/10940929.jpg",
              message: 'El paisaje mas hermoso',
            ),
            CustomCardType1(),
            CustomCardType2(
              imageRoute:
                  "https://images.unsplash.com/photo-1494783367193-149034c05e8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
            ),
          ],
        ));
  }
}
