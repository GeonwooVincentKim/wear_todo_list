import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wear_todo_list/screens/home.dart';
import 'package:wear_todo_list/shared/design/time_gradient.dart';

class WatchActive extends StatefulWidget {
  final HomeStateController state;
  const WatchActive({super.key, required this.state});

  @override
  State<WatchActive> createState() => _WatchActiveState();
}

class _WatchActiveState extends State<WatchActive> {
  String currentDate = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day).toString();
  String testDate = DateFormat("yyyy MM dd").format(DateTime.now());
  var dt = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: TimeGradient(
        child: Center(
          child: Text(testDate, style: const TextStyle(color: Colors.white),),
        ),
      )
    );
  }
}
