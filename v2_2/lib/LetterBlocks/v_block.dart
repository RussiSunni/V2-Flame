import 'package:flutter/material.dart';

class VBlock extends StatefulWidget {
  @override
  State<VBlock> createState() => _VBlockState();
}

class _VBlockState extends State<VBlock> {
  Color backgroundColor = Colors.yellow;

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
            "V",
            style: TextStyle(
              color: Colors.black,
              fontSize: 36,
            ),
          ),
        ));
  }
}
