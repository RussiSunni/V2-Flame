import 'package:flutter/material.dart';
import 'questions.dart';

class TargetBlocks extends StatefulWidget {
  @override
  State<TargetBlocks> createState() => _TargetBlocksState();
}

class _TargetBlocksState extends State<TargetBlocks> {
  Color backgroundColor = Color(0xff111111);

  int letterBlockNumber = Question1().letterNumber;

  var letterBlocks = List<Widget?>.filled(Question1().letterNumber, null);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i in letterBlocks)
          DragTarget<Widget>(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return Container(
                margin: EdgeInsets.all(10),
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                child: letterBlocks[0],
              );
            },
            onAccept: (data) {
              setState(() {
                letterBlocks[0] = data;
              });
            },
          ),
      ],
    );
  }
}
