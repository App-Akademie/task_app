import 'package:flutter/material.dart';

class S4522 extends StatelessWidget {
  const S4522({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MystatelessWidget();
  }
}

class MystatelessWidget extends StatelessWidget {
  const MystatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("hallo Jan"),
        ElevatedButton(onPressed: () {}, child: const Text("Klick Mich"))
      ],
    );
  }
}
