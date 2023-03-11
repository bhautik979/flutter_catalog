import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String password = "";
  bool isValid(String s) {
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '@') {
        return true;
      }
    }
    return false;
  }

  bool checkAreNotEqual(String s) {
    return !(s == password);
  }

  void checkStatus() async {
    if (_formKey.currentState!.validate()) {
      await Navigator.pushNamed(context, MyRoutes.homeroute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Image.asset(
          'assets/image/Signup.png',
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Join Us",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: "User Name"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "User name requier";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Email"),
                    validator: (value) {
                      if (isValid(value!)) {
                        return null;
                      }
                      return "Email must contain @";
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Password"),
                    validator: (value) {
                      password = value!;
                      if (value!.isEmpty) {
                        return "Enter valid password";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Confirm password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter confirm password";
                      }
                      if (checkAreNotEqual(value)) {
                        return "password are different";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40,
          width: 120,
          child: ElevatedButton(
            child: Text("Sign Up"),
            style: ButtonStyle(),
            onPressed: () => (checkStatus()),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text("Already have account?"),
      ],
    ));
  }
}
