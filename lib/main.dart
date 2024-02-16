import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

// CRISTIAN EULISES SANCHEZ RAMIREZ
//2021-1899
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My Aplication",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  late final String name = "Cristian Sanchez";
  late final String imageUrl = "assets/images/cristian.jpg";
  late String dateTime = "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second} \n ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}";

  @override
  void initState() {
    super.initState();
    startTimer();
    updateTimer();
  }

  void updateTimer() {
    setState(() {
     dateTime = "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second} \n ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}"; 
    });
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      updateTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl, width: 300, height: 300),
            const SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              dateTime,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
