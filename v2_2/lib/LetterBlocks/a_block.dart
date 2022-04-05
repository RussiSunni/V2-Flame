import 'package:flutter/material.dart';

class ABlock extends StatefulWidget {
  @override
  State<ABlock> createState() => _ABlockState();
}

class _ABlockState extends State<ABlock> {
  @override
  Widget build(BuildContext context) {
    return Draggable(
        feedback: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: const Center(
            child: Text(
              'A',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
              ),
            ),
          ),
        ),
        child: Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: const Center(
            child: Text(
              'A',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
              ),
            ),
          ),
        ),
        //data: ABlock(),
        data: "A");
  }
}
