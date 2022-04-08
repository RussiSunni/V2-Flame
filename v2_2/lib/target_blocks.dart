import 'package:flutter/material.dart';
import 'questions.dart';

class TargetBlocks extends StatefulWidget {
  @override
  final VoidCallback changeQuestion;
  TargetBlocks(this.changeQuestion);
  State<TargetBlocks> createState() => _TargetBlocksState(changeQuestion);
}

class _TargetBlocksState extends State<TargetBlocks> {
  List<Question> questionList = [
    QuestionList().question1,
    QuestionList().question2
  ];

  var widgetList = List<Widget?>.filled(3, null);
  var isLetterCorrect = List<bool?>.filled(3, false);
  bool answerCorrect = false;

  final VoidCallback changeQuestionCallback;
  _TargetBlocksState(this.changeQuestionCallback);

  void changeQuestion() {}

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < questionList[0].letterNumber; i++)
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
                child: widgetList[i],
              );
            },
            onAccept: (data) {
              setState(() {
                if (data == questionList[0].answerBlocks[i]) {
                  widgetList[i] = questionList[0].answerWidgets[i];
                  isLetterCorrect[i] = true;
                }

                bool allCorrect = true;
                for (int i = 0; i < questionList[0].letterNumber; i++) {
                  if (isLetterCorrect[i] == false) {
                    allCorrect = false;
                  }
                }
                if (allCorrect == true) {
                  changeQuestionCallback();
                  changeQuestion();
                  for (int i = 0;
                      i < questionList[0].answerWidgets.length;
                      i++) {
                    answerCorrect = true;
                  }
                }
              });
            },
          ),
      ],
    );
  }
}
