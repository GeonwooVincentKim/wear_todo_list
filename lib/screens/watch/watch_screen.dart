import 'package:flutter/material.dart';
import 'package:wear/wear.dart';
import 'package:wear_todo_list/screens/home.dart';
import 'package:wear_todo_list/widgets/watch/watch_active.dart';
import 'package:wear_todo_list/widgets/watch/watch_ambient.dart';

class WatchScreen extends StatelessWidget {
  final HomeStateController state;
  const WatchScreen({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return WatchShape(
      builder: (BuildContext context, WearShape shape, Widget? child) {
        return AmbientMode(
          builder: (context, mode, child) {
            return mode == WearMode.active
              ? WatchActive(state: state)
              : WatchAmbient(state: state);
          },
        );
      },
    );
  }
}
