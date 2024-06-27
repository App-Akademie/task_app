import 'package:flutter/material.dart';

class S4532 extends StatelessWidget {
  const S4532({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const myColumnText();
  }
}

class myColumnText extends StatelessWidget {
  const myColumnText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "App Akademie",
        ),
        Text(
          'App Akademie',
          style: TextStyle(
              fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        Text(
          'App Akademie',
          style: TextStyle(
              fontSize: 10, color: Colors.green, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
