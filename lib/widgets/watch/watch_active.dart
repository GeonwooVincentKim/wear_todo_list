import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rotary_scrollbar/rotary_scrollbar.dart';
import 'package:rotary_scrollbar/widgets/rotary_wrapper.dart';
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

  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: TimeGradient(
        child: RotaryScrollWrapper(
          rotaryScrollbar: RotaryScrollbar(
            controller: scrollController
          ),
          child: ListView.builder(
            controller: scrollController,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  bottom: 10
                ),
                child: Container(
                  color: Colors.blue.withRed(((255 / 29) * index).toInt()),
                  width: 50,
                  height: 50,
                  child: Center(child: Text(('box $index')))
                )
              );
            },
            itemCount: 30,
          )
        )
      )
    );
  }
}
