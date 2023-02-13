import 'package:flutter/material.dart';
import 'package:wear_todo_list/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo List Application",
      theme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      routes: {

      },
      home: const Home(),
    );
  }
}
