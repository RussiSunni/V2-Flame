import 'package:flutter/material.dart';

class RightPanel extends StatefulWidget {
  @override
  State<RightPanel> createState() => _RightPanelState();
}

class _RightPanelState extends State<RightPanel> {
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
      child: Image(
        image: const AssetImage('assets/images/fairy-neutral.png'),
        height: MediaQuery.of(context).size.height -
            MediaQuery.of(context).size.width,
      ),
    ));
  }
}
