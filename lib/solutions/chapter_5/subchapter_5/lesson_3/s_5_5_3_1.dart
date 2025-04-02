import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class S5531 extends StatelessWidget {
  const S5531({super.key});
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

/// gibt ein Future eines [RandomUser] zurück
Future<RandomUser> fetchRandomUser() async {
  // API-Call
  final response = await http.get(Uri.parse('https://randomuser.me/api'));

  // Wenn der API-Call erfolgreich war, wird das JSON-Objekt in eine RandomUser-Instanz konvertiert.
  if (response.statusCode == 200) {
    final userJson = json.decode(response.body)['results'][0];
    return RandomUser.fromJson(userJson);
  } else {
    throw Exception('Konnte Random User nicht laden.');
  }
}

/// eine Model-Klasse für einen Random User
class RandomUser {
  final String firstName;
  final String lastName;
  final String imageUrl;

  RandomUser({
    required this.firstName,
    required this.lastName,
    required this.imageUrl,
  });

  // Konvertiert das JSON-Objekt aus dem API-Call in eine RandomUser-Instanz.
  factory RandomUser.fromJson(Map<String, dynamic> json) {
    return RandomUser(
      firstName: json['name']['first'],
      lastName: json['name']['last'],
      imageUrl: json['picture']['large'],
    );
  }
}
