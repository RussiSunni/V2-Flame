import 'package:flutter/material.dart';

class NBlock extends StatefulWidget {
  @override
  State<NBlock> createState() => _NBlockState();
}

class _NBlockState extends State<NBlock> {
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
            "N",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
