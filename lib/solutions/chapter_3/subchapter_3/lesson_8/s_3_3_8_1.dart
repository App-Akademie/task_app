import 'package:flutter/material.dart';

int reverseNumber(int input) {
  // Lösung hier einfügen
  throw UnimplementedError();
}

class S3381 extends StatefulWidget {
  const S3381({super.key});

  @override
  State<S3381> createState() => _S3381State();
}

class _S3381State extends State<S3381> {
  final TextEditingController _inputController = TextEditingController();
  int? output;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _inputController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Zahl',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          output?.toString() ?? '',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            final input = int.tryParse(_inputController.text);
            if (input == null) {
              setState(() {
                output = null;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Bitte eine Zahl eingeben.'),
                ),
              );
              return;
            }
            setState(() {
              output = reverseNumber(input);
            });
          },
          child: const Text('Umdrehen'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }
}
