import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class EnglishPackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: Text("English Package"),
      ),
      body: Center(
        child: Text(
          wordPair.asPascalCase,
          style: TextStyle(
            color: const Color(0xFF1a8cd7),
            fontSize: 24,
            fontWeight: FontWeight.w300,
            fontFamily: "Roboto",
          ),
        ),
      ),
    );
  }
}
