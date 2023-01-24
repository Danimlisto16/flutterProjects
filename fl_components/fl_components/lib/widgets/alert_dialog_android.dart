import 'package:flutter/material.dart';

class AlertDialogAndroid extends StatelessWidget {
  const AlertDialogAndroid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text("Hola")]),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(15)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text("Contenido"),
          FlutterLogo(
            size: 100,
          )
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel")),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Ok")),
          ],
        )
      ],
    );
  }
}
