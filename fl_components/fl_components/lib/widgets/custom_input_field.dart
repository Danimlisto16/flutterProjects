import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? message;
  final String? labelText;
  final String? helperText;

  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final IconData? mainIcon;

  final Function(String)? fun;

  // ignore: use_key_in_widget_constructors
  const CustomInputField({
    Key? key,
    this.message,
    this.labelText,
    this.helperText,
    this.prefixIcon,
    this.suffixIcon,
    this.mainIcon,
    this.fun,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: null,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => print(value),//imprimir al cambio
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return fun!(value!);
      },
      decoration: InputDecoration(
        hintText: message,
        labelText: labelText,
        helperText: helperText,
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: mainIcon == null ? null : Icon(mainIcon),
      ),
    );
  }
}
