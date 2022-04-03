import 'package:flutter/material.dart';

class TBlock extends StatefulWidget {
  @override
  State<TBlock> createState() => _TBlockState();
}

class _TBlockState extends State<TBlock> {
  Color backgroundColor = Colors.blue;

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
            "T",
            style: TextStyle(
              color: Colors.black,
              fontSize: 36,
            ),
          ),
        ));
  }
}
