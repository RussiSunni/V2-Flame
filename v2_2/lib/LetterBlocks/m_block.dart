import 'package:flutter/material.dart';

class MBlock extends StatefulWidget {
  @override
  State<MBlock> createState() => _MBlockState();
}

class _MBlockState extends State<MBlock> {
  Color backgroundColor = Colors.green;

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
            "M",
            style: TextStyle(
              color: Colors.black,
              fontSize: 36,
            ),
          ),
        ));
  }
}
