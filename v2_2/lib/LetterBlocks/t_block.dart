import 'package:flutter/material.dart';

class TBlock extends StatefulWidget {
  @override
  State<TBlock> createState() => _TBlockState();
}

class _TBlockState extends State<TBlock> {
  @override
  Widget build(BuildContext context) {
    return Draggable(
        feedback: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.blue,
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
              'T',
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
            color: Colors.blue,
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
              'T',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
              ),
            ),
          ),
        ),
        data: "T"
        // data: TBlock(),
        );
  }
}
