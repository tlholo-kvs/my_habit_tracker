import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
            child: const Text(
          "Log in below",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        )),
        const MyTextInput(
          hintTextForField: 'Enter email',
          labelText: "Enter email",
          textInputType: TextInputType.emailAddress,
        ),
        const MyTextInput(
          labelText: "Enter password",
          hintTextForField: 'Enter password',
          textInputType: TextInputType.visiblePassword,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Log In'),
        ),
      ],
    );
  }
}

class MyTextInput extends StatelessWidget {
  final String labelText = "";
  final TextInputType textInputType = TextInputType.none;
  final String hintTextForField = "";

  const MyTextInput({super.key, required labelText, required textInputType, required hintTextForField, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 8),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintTextForField,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(),
          ),
        ),
        validator: (val) {
          if (val!.isEmpty) {
            return "Email cannot be empty";
          } else {
            return null;
          }
        },
        keyboardType: textInputType,
        style: const TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}
