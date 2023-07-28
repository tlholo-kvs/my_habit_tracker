import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  final String inputLabelText = "";
  final TextInputType inputTypeForField = TextInputType.none;
  final String textFieldHint = "";

  const MyTextInput({
    super.key,
    required labelText,
    required textInputType,
    required hintTextForField,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 8),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: inputLabelText,
          hintText: textFieldHint,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(),
          ),
        ),
        validator: (val) {
          if (val!.isEmpty) {
            return "Field cannot be empty";
          } else {
            return null;
          }
        },
        keyboardType: inputTypeForField,
        style: const TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}
