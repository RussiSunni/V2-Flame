import 'package:flutter/material.dart';

class LeftPanel extends StatefulWidget {
  @override
  State<LeftPanel> createState() => _LeftPanelState();
}

class _LeftPanelState extends State<LeftPanel> {
  Color backgroundColor = Color(0xff111111);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width / 4,
      width: 240,
      // height: MediaQuery.of(context).size.height,
      height: 480,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ), //BorderRadius.all,
          border: Border.all(
            color: Colors.white,
            width: 2.0,
          ),
          color: backgroundColor),
      child: const Image(
        image: AssetImage('images/artemis.png'),
      ),
    );
  }
}