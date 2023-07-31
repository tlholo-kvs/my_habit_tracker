import 'package:flutter/material.dart';
import 'package:my_habit_tracker/routes/routes.dart';

import '../widgets/mytextinput.dart';

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
            width: 200,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: const Center(
              child: Text(
                "Log in below",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              ),
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
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.calenderPage);
          },
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(200, 10),
          ),
          child: const Text('Log In'),
        ),
      ],
    );
  }
}
