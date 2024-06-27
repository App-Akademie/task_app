import 'package:flutter/material.dart';

class S4521 extends StatelessWidget {
  const S4521({super.key});
  @override
  Widget build(BuildContext context) {
    return const HelloWorld();
  }
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: S4521(),
      ),
    );
  }
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hello World'),
    );
  }
}
