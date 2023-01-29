import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input y Forms")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                  autofocus: true,
                  initialValue: null,
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) => print(value),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null) return 'Este campo es requerido';
                    return value.length < 3 ? 'Minimo 3 caracteres' : null;
                  },
                  decoration: const InputDecoration(
                      hintText: 'Nombre del usuario', 
                      labelText: 'Nombre',
                      helperText: "Solo letras",
                      prefixIcon: Icon(Icons.verified),
                      suffixIcon: Icon(Icons.group),
                      icon: Icon(Icons.ac_unit),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                        )
                      )
                  ),
                      
                      ),
                      
            ],
          ),
        ),
      ),
    );
  }
}
