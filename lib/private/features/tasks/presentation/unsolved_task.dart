import 'package:flutter/material.dart';
import 'package:task_app/private/config/assets.dart';

class UnsolvedTask extends StatelessWidget {
  const UnsolvedTask({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text("Noch kein Lösung vorhanden 😞",
            style: Theme.of(context).textTheme.titleMedium),
        Image.asset(Assets.polarBear),
      ],
    ));
  }
}
