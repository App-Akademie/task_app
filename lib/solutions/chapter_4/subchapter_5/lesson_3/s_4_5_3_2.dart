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
    return Column(
      children: [
        Text(
          'App Akademie',
          style: TextStyle(fontSize: 20, color: Colors.red),
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
