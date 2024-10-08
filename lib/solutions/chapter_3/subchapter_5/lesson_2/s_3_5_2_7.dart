import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';

/// This functions tries to hack a 4 digit PIN.
/// It returns the PIN as a string.
String hackPin() {
  // Lösung hier einfügen
  throw UnimplementedError();
}

// ignore: unused_element
bool _isPinCorrect(String input) {
  final hashedInput = sha1.convert(utf8.encode(input)).toString();
  return hashedInput == _secretPinHashed;
}

const String _secretPinHashed = '2a0ebfb7c7ecc618493f4f6dfae77d2bccddc7ba';

class S3527 extends StatefulWidget {
  const S3527({Key? key}) : super(key: key);

  @override
  State<S3527> createState() => _S3527State();
}

class _S3527State extends State<S3527> {
  String? output;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          output?.toString() ?? '',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              output = "Die PIN lautet: ${hackPin()}.";
            });
          },
          child: const Text('Hacke PIN'),
        ),
      ],
    );
  }
}