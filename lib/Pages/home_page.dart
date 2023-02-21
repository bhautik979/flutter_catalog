import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
    final int day = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: Center(
          child: Container(
            child: Text("Welcome to Bhautik day:$day"),
          ),
        ),
        drawer: Drawer(),
    );
  }
}