import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'left_panel.dart';
import 'center_panel.dart';
import 'right_panel.dart';

void main() {
  runApp(const App2());
}

class App2 extends StatelessWidget {
  const App2({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeLeft,
    //   DeviceOrientation.landscapeRight,
    // ]);
    return MaterialApp(
      title: 'V2.2',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(title: 'V2.2'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LeftPanel(),
              RightPanel(),
            ],
          ),
          CenterPanel(),
        ],
      )),
    );
  }
}
