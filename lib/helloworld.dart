import 'package:flutter/material.dart';

class Helloworld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello world"),
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            color: const Color(0xFF1a8cd7),
            fontSize: 28,
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto",
          ),
        ),
      ),
    );
  }
}
