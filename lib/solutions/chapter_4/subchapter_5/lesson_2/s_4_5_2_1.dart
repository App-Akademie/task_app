import 'package:flutter/material.dart';

class S4521 extends StatelessWidget {
  const S4521({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(
  heightFactor: 10,
      child: Text(
        textDirection: TextDirection.ltr,
        "Hello World",
        style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(blurRadius: 15, color: Colors.black, offset: Offset(1, 1))
            ]),
      ),
    );
  }
}
