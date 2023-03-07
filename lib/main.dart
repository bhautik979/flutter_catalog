import 'package:flutter/material.dart';
import 'package:flutter_catalog/Pages/home_page.dart';
import 'package:flutter_catalog/Pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark, //
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          fontFamily: GoogleFonts.lato().fontFamily,
          ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      // initialRoute: "/homepage",
      routes: {
        "/": (context) => LoginPage(),
        "/homepage": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
