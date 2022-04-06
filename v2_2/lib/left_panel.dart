import 'package:flutter/material.dart';

class LeftPanel extends StatefulWidget {
  @override
  State<LeftPanel> createState() => _LeftPanelState();
}

class _LeftPanelState extends State<LeftPanel> {
  Color backgroundColor = Color(0xff111111);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 0.0,
          ),
          color: backgroundColor),
      child: const Image(
        image: AssetImage('assets/images/artemis.png'),
      ),
    ));
  }
}
