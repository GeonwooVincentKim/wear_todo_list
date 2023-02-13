import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wear_todo_list/screens/home.dart';
import 'package:wear_todo_list/shared/design/time_gradient.dart';

class PhoneScreen extends StatelessWidget {
  final HomeStateController state;
  const PhoneScreen({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: TimeGradient(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text("Testing"),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(
                  DateFormat.yMMMd().format(DateTime.now())
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}