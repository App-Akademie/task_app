import 'package:flutter/material.dart';

class S4535 extends StatelessWidget {
  const S4535({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('S4535 Task'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Löse die Aufgabe für S4535:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Füge hier den Code für die Aufgabe hinzu
                // Beispiel: Navigator.push(context, MaterialPageRoute(builder: (context) => S4535TaskScreen()));
              },
              child: const Text('Aufgabe für S4535 lösen'),
            ),
          ],
        ),
      ),
    );
  }
}
