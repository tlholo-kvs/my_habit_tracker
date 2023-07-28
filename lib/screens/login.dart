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
      children: [
        const MyTextInput(
          labelText: "Enter email",
          textInputType: TextInputType.emailAddress,
        ),
        const MyTextInput(
          labelText: "Enter password",
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

  const MyTextInput({super.key, required labelText, required textInputType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 8),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
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
