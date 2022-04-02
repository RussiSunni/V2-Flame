import 'package:flutter/material.dart';

class QBlock extends StatefulWidget {
  @override
  State<QBlock> createState() => _QBlockState();
}

class _QBlockState extends State<QBlock> {
  Color backgroundColor = Color(0xff111111);

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
              color: Colors.white,
              width: 2.0,
            ),
            color: backgroundColor),
        child: Center(
          child: Text(
            "Q",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
