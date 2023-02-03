import 'package:fl_components/validators/validators.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';


class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input y Forms")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child:  Column(

            children:const    [
                  CustomInputField(
                  labelText: " cedula",
                  message: "Cedula",
                  helperText: " cedula de identidad",
                  fun:Validators.validateCed),
                  SizedBox(
                    height: 20,
                  
                  ),
                  CustomInputField(
                  labelText: " Nombre",
                  message: "Nombre",
                  helperText: " Nombre",
                  fun: Validators.validateName),
                
                
            ],
          ),
        ),
      ),
    );
  }
}

