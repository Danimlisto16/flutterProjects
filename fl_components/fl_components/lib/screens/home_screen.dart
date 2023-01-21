import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes en Flutter"),
        elevation: 0.0,
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          title: const Text("Nombre de ruta"),
          leading: const Icon(Icons.straighten),
          onTap: () {
            //final route = MaterialPageRoute(
            //  builder: (context) => const Listview1Screen(),
            //);

            Navigator.pushNamed(context, AppRoutes.initialRoute);
          },
        ),
        separatorBuilder: (_, __) =>
            const Divider(color: Color.fromARGB(255, 5, 5, 5)),
      ),
    );
  }
}
