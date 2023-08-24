import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  TextForm(
      {required this.hintText, required this.onChange, this.visible = false});
  final String hintText;
  final Function(String) onChange;
  final bool visible;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      obscureText: visible,
      validator: (value) {
        if (value!.isEmpty) {
          return "This Field Is Required";
        }
        return null;
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        border: userField(),
        enabledBorder: userField(),
        focusedBorder: userField(),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

OutlineInputBorder? userField() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
  );
}
