import 'package:flutter/material.dart';
import 'package:task_app/private/config/app_theme.dart';
import 'package:task_app/private/config/assets.dart';

class UnsolvedTask extends StatelessWidget {
  const UnsolvedTask({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text("Noch kein Lösung vorhanden 😞",
            style: context.textTheme.titleMedium),
        Image.asset(Assets.polarBear),
      ],
    ));
  }
}
