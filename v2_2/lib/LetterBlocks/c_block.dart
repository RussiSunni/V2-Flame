import 'package:flutter/material.dart';

class CBlock extends StatefulWidget {
  @override
  State<CBlock> createState() => _CBlockState();
}

class _CBlockState extends State<CBlock> {
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
            "C",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
