import 'package:flutter/material.dart';
import 'package:wear_todo_list/screens/home.dart';
import 'package:wear_todo_list/shared/design/time_gradient.dart';

class WatchActive extends StatelessWidget {
  final HomeStateController state;
  const WatchActive({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: TimeGradient(
        child: const Center(
          child: Text("Testing"),
        ),
      )
    );
  }
}
