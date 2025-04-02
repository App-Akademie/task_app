import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:task_app/private/config/assets.dart';
import 'package:task_app/private/features/settings/data/settings_controller.dart';

class DarkModeSwitch extends StatefulWidget {
  const DarkModeSwitch({super.key, required this.settingsController});
  final SettingsController settingsController;
  @override
  DarkModeSwitchState createState() => DarkModeSwitchState();
}

class DarkModeSwitchState extends State<DarkModeSwitch> {
  StateMachineController? controller;
  SMIInput<bool>? switchInput;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (switchInput == null) return;
        final isDark = switchInput!.value;
        widget.settingsController.updateThemeMode(
            switchInput!.value ? ThemeMode.light : ThemeMode.dark);
        switchInput?.change(!isDark);
      },
      child: SizedBox(
          height: 60,
          width: 100,
          child: RiveAnimation.asset(
            Assets.darkLightSwitch,
            stateMachines: const ["Switch Theme"],
            onInit: (artboard) {
              controller = StateMachineController.fromArtboard(
                artboard,
                "Switch Theme",
              );
              if (controller == null) return;
              artboard.addController(controller!);
              switchInput = controller!.findInput("isDark");
              switchInput?.change(widget.settingsController.darkModeSet);
            },
          )),
    );
  }
}
