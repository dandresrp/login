import 'package:flutter/material.dart';

class CustomTextTitulos extends StatelessWidget {
  final String text;

  const CustomTextTitulos(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class CustomTextBotones extends StatelessWidget {
  final String text;

  const CustomTextBotones(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}