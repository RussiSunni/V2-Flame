import 'package:flutter/material.dart';

class SBlock extends StatefulWidget {
  @override
  State<SBlock> createState() => _SBlockState();
}

class _SBlockState extends State<SBlock> {
  Color backgroundColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width / 8,
        width: MediaQuery.of(context).size.width / 8,
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
            "S",
            style: TextStyle(
              color: Colors.black,
              fontSize: 36,
            ),
          ),
        ));
  }
}
