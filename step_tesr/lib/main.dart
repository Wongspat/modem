import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  List<Map<String, dynamic>> data = [
    {'title': 'hee', 'icon': Icons.gamepad_rounded},
    {'title': 'kuy', 'icon': Icons.kayaking_outlined},
    {'title': 'tuud', 'icon': Icons.radar}
  ];

  Widget build(BuildContext context) {
    Random r = new Random();
    var number = r.nextInt(3);

    return Container(
        child: Row(
          children: [
            Icon(data[number]['icon']), 
            Text(data[number]['title'])],
    ));
  }
}
