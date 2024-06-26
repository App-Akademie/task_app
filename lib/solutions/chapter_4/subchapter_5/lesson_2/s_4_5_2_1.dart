import 'package:flutter/material.dart';

class S4521 extends StatelessWidget {
  const S4521({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const HelloWorldCenter();
  }
}

class HelloWorldCenter extends StatelessWidget {
  const HelloWorldCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello World',
        style: TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 255, 2, 2),
          fontWeight: FontWeight.bold),
      ),
    );
  }
}
