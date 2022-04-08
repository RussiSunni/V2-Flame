import 'package:flutter/material.dart';

import 'LetterBlocks/a_block.dart';
import 'LetterBlocks/c_block.dart';
import 'LetterBlocks/t_block.dart';
import 'LetterBlocks/d_block.dart';
import 'LetterBlocks/o_block.dart';
import 'LetterBlocks/g_block.dart';

class Question {
  String? name;
  late int letterNumber;
  late List<String> answerBlocks;
  late List<Widget> answerWidgets;
  late String questionImage;

  Question(String name, int letterNumber, List<String> answerBlocks,
      List<Widget> answerWidgets, String questionImage) {
    this.name = name;
    this.letterNumber = letterNumber;
    this.answerBlocks = answerBlocks;
    this.answerWidgets = answerWidgets;
    this.questionImage = questionImage;
  }
}

class QuestionList {
  Question question1 = Question("CAT", 3, ["C", "A", "T"],
      [CBlock(), ABlock(), TBlock()], "assets/images/cat.png");

  Question question2 = Question("DOG", 3, ["D", "O", "G"],
      [DBlock(), OBlock(), GBlock()], "assets/images/dog.png");
}
