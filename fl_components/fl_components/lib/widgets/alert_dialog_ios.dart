import 'package:fl_components/main.dart';
import 'package:flutter/cupertino.dart';

class AlertDialogIOS extends StatelessWidget {
  const AlertDialogIOS({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text("Hola")]),
      /* shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(15)
        ), */
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
