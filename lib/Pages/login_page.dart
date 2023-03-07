import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: Column(
      children: [
        Image.asset("assets/image/login_image.png", fit: BoxFit.cover),
        const SizedBox(
          height: 20.0,
        ),
        Text("Welcome",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              TextFormField(
                  decoration: InputDecoration(
                labelText: "Username",
              )),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          child: Text("Login"),
          style: TextButton.styleFrom(),
          onPressed: () {
            print("Hi codepur");
          },
        ),
      ],
    ));
  }
}
