import 'package:flutter/material.dart';

class CBlock extends StatefulWidget {
  @override
  State<CBlock> createState() => _CBlockState();
}

class _CBlockState extends State<CBlock> {
  @override
  Widget build(BuildContext context) {
    return Draggable(
        feedback: Container(
          height: MediaQuery.of(context).size.height / 8,
          width: MediaQuery.of(context).size.height / 8,
          decoration: BoxDecoration(
            color: Colors.red,
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
              'C',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
              ),
            ),
          ),
        ),
        child: Container(
          height: MediaQuery.of(context).size.width / 8,
          width: MediaQuery.of(context).size.width / 8,
          decoration: BoxDecoration(
            color: Colors.red,
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
              'C',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
              ),
            ),
          ),
        ),
        data: "C"
        //data: CBlock(),
        );
  }
}
