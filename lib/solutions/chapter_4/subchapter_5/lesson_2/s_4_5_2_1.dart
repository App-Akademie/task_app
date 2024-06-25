import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class S4521 extends StatelessWidget {
  const S4521({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const HalloWorldStateless();
  }
}

class HalloWorldStateless extends StatelessWidget {
  const HalloWorldStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("hello World"),
    );
  }
}
