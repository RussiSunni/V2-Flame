import 'package:flutter/material.dart';

class GBlock extends StatefulWidget {
  @override
  State<GBlock> createState() => _GBlockState();
}

class _GBlockState extends State<GBlock> {
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
            "G",
            style: TextStyle(
              color: Colors.black,
              fontSize: 36,
            ),
          ),
        ));
  }
}
