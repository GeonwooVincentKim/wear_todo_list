import 'package:flutter/material.dart';
import 'package:wear_todo_list/screens/phone/phone_screen.dart';
import 'package:wear_todo_list/screens/watch/watch_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeStateController();
}

class HomeStateController extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      debugPrint('Host device screen width: ${constraints.maxWidth}');

      if (constraints.maxWidth < 300) {
        return WatchScreen(state: this);
      } else {
        return PhoneScreen(state: this);
      }
    });
  }
}
