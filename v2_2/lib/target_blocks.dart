import 'package:flutter/material.dart';
import 'questions.dart';

class TargetBlocks extends StatefulWidget {
  @override
  final VoidCallback changeQuestion;
  TargetBlocks(this.changeQuestion);
  State<TargetBlocks> createState() => _TargetBlocksState(changeQuestion);
}

class _TargetBlocksState extends State<TargetBlocks> {
  var widgets = List<Widget?>.filled(Question1().letterNumber, null);
  var isLetterCorrect = List<bool?>.filled(Question1().letterNumber, false);

  final VoidCallback changeQuestion;
  _TargetBlocksState(this.changeQuestion);

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
                height: MediaQuery.of(context).size.width / 8,
                width: MediaQuery.of(context).size.width / 8,
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
                  changeQuestion();
                  for (int i = 0; i < widgets.length; i++) {
                    widgets[i] = null;
                  }
                }
              });
            },
          ),
      ],
    );
  }
}
