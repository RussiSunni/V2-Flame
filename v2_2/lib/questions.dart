import 'package:flutter/material.dart';

import 'LetterBlocks/a_block.dart';
import 'LetterBlocks/c_block.dart';
import 'LetterBlocks/t_block.dart';
import 'LetterBlocks/d_block.dart';
import 'LetterBlocks/o_block.dart';
import 'LetterBlocks/g_block.dart';

class Question1 {
  String name = "CAT";
  int letterNumber = 3;
  List<String> answerBlocks = ["C", "A", "T"];
  List<Widget> answerWidgets = [CBlock(), ABlock(), TBlock()];
}

class Question2 {
  String name = "DOG";
  int letterNumber = 3;
  List<String> answerBlocks = ["D", "O", "G"];
  List<Widget> answerWidgets = [DBlock(), OBlock(), GBlock()];
}
