import 'dart:io';
import 'package:flutter/material.dart';
import '../widgets/alert_dialog_android.dart';
import '../widgets/alert_dialog_ios.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  displayAlert(BuildContext context) {
    showDialog(
      barrierDismissible: false,
        context: context,
        builder: (context)=>
          Platform.isAndroid 
          ?  const AlertDialogAndroid()
          :  const AlertDialogIOS()
    );
        
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => displayAlert(context),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text("Mostrar alerta"),
            )),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context) /* Navigator.pop(context) */
        ,
        child: const Icon(Icons.close),
      ),
    );
  }
}




