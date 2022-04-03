import 'package:flutter/material.dart';

class KBlock extends StatefulWidget {
  @override
  State<KBlock> createState() => _KBlockState();
}

class _KBlockState extends State<KBlock> {
  Color backgroundColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ), //BorderRadius.all,
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
            color: backgroundColor),
        child: Center(
          child: Text(
            "K",
            style: TextStyle(
              color: Colors.black,
              fontSize: 36,
            ),
          ),
        ));
  }
}
