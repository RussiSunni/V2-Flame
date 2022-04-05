import 'dart:io';

import 'package:flutter/material.dart';
import 'questions.dart';

class TargetBlocks extends StatefulWidget {
  @override
  State<TargetBlocks> createState() => _TargetBlocksState();
}

class _TargetBlocksState extends State<TargetBlocks> {
  var widgets = List<Widget?>.filled(Question1().letterNumber, null);
  var isLetterCorrect = List<bool?>.filled(Question1().letterNumber, false);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < Question1().letterNumber; i++)
          DragTarget<String>(
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
                child: widgets[i],
              );
            },
            onAccept: (data) {
              setState(() {
                if (data == Question1().answerBlocks[i]) {
                  widgets[i] = Question1().answerWidgets[i];
                  isLetterCorrect[i] = true;
                }

                bool allCorrect = true;
                for (int i = 0; i < Question1().letterNumber; i++) {
                  if (isLetterCorrect[i] == false) {
                    allCorrect = false;
                  }
                }
                if (allCorrect == true) {
                  print("all correct");
                }
              });
            },
          ),
      ],
    );
  }
}
