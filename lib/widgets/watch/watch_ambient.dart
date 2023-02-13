import 'package:flutter/material.dart';
import 'package:wear_todo_list/screens/home.dart';

class WatchAmbient extends StatelessWidget {
  final HomeStateController state;
  const WatchAmbient({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text("Watch Ambient"),
      )
    );
  }
}
