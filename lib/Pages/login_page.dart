import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  String password = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToNext(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(milliseconds: 1)); //sait for this time
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/image/login_image.png", fit: BoxFit.cover),
            const SizedBox(
              height: 20.0,
            ),
            Text("Welcome $name",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        return (value!.isEmpty
                            ? "User name can not be empty"
                            : null);
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                      ),
                      onChanged: (value) {
                        password = value;
                        print(password); //print password in consol
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can not be empty";
                        } else if (value.length < 6) {
                          return "Password length is greater then 6";
                        } else {
                          return null;
                        }
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone_android),
                        labelText: "Phone no",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Mobile number is mendatory";
                        }
                        if (value!.length > 10 ) {
                          return "Enter valid mobile number";
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Material(
              borderRadius: BorderRadius.circular(changeButton ? 150 : 8),
              color: Colors.blue,
              child: InkWell(
                onTap: () {
                  moveToNext(context);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton ? 50 : 150,
                  height: 45,
                  alignment: Alignment.center,
                  child: changeButton
                      ? Icon(Icons.done)
                      : Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                ),
              ),
            ),
          ],

          // InkWell(
          //   onTap: () async {
          //     setState(() {
          //       changeButton = true;
          //     });
          //     await Future.delayed(Duration(seconds: 1));
          //     Navigator.pushNamed(context, MyRoutes.homeroute);
          //   },
          //   child: AnimatedContainer(
          //     duration: Duration(microseconds: 100),
          //     height: 50,
          //     width: changeButton ? 50 : 150,
          //     alignment: Alignment.center,
          //     child: changeButton
          //         ? Icon(
          //             Icons.done,
          //             color: Colors.white,
          //           )
          //         : Text(
          //             "Login",
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 18),
          //           ),
          //     decoration: BoxDecoration(
          //       color: Colors.blue,
          //       // shape: changeButton? BoxShape.circle:BoxShape.rectangle
          //       borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
          //     ),
          //   ),
          // ),
          // ElevatedButton(
          //   child: Text("Login"),
          //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
          //   onPressed: () {
          //     Navigator.pushNamed(context, MyRoutes.homeroute);
          //   },
          // ),
        ),
      ),
    );
  }
}
