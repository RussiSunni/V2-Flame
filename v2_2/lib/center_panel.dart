import 'package:flutter/material.dart';

import 'target_blocks.dart';
import 'LetterBlocks/a_block.dart';
import 'LetterBlocks/b_block.dart';
import 'LetterBlocks/c_block.dart';
import 'LetterBlocks/d_block.dart';
import 'LetterBlocks/e_block.dart';
import 'LetterBlocks/f_block.dart';
import 'LetterBlocks/g_block.dart';
import 'LetterBlocks/h_block.dart';
import 'LetterBlocks/i_block.dart';
import 'LetterBlocks/j_block.dart';
import 'LetterBlocks/k_block.dart';
import 'LetterBlocks/l_block.dart';
import 'LetterBlocks/m_block.dart';
import 'LetterBlocks/n_block.dart';
import 'LetterBlocks/o_block.dart';
import 'LetterBlocks/p_block.dart';
import 'LetterBlocks/q_block.dart';
import 'LetterBlocks/r_block.dart';
import 'LetterBlocks/s_block.dart';
import 'LetterBlocks/t_block.dart';
import 'LetterBlocks/u_block.dart';
import 'LetterBlocks/v_block.dart';
import 'LetterBlocks/w_block.dart';
import 'LetterBlocks/x_block.dart';
import 'LetterBlocks/y_block.dart';
import 'LetterBlocks/z_block.dart';

class CenterPanel extends StatefulWidget {
  @override
  State<CenterPanel> createState() => _CenterPanelState();
}

class _CenterPanelState extends State<CenterPanel> {
  Color backgroundColor = Color(0xff111111);
  String image = "cat";
  var questionImage = Image.asset('assets/images/cat.png');

  String questionImageString = 'assets/images/cat.png';

  void changeQuestion() {
    setState(() {
      print("change question");
      questionImageString = "assets/images/dog.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 0.0,
            ),
            color: backgroundColor),
        child: Column(
          children: [
            Row(children: [
              ABlock(),
              BBlock(),
              CBlock(),
              DBlock(),
              EBlock(),
              FBlock(),
              GBlock(),
              HBlock()
            ]),
            Row(
              children: [
                Column(children: [
                  ABlock(),
                  BBlock(),
                  ZBlock(),
                  YBlock(),
                  XBlock(),
                  WBlock(),
                ]),
                Column(children: [
                  Image(
                      image: AssetImage(
                        questionImageString,
                      ),
                      width: MediaQuery.of(context).size.height / 4,
                      height: MediaQuery.of(context).size.height / 4),
                  TargetBlocks(changeQuestion),
                ]),
                Column(children: [
                  IBlock(),
                  JBlock(),
                  KBlock(),
                  LBlock(),
                  MBlock(),
                  NBlock(),
                ]),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Row(
              children: [
                OBlock(),
                PBlock(),
                QBlock(),
                RBlock(),
                SBlock(),
                TBlock(),
                UBlock(),
                VBlock()
              ],
              textDirection: TextDirection.rtl,
            ),
          ],
        ));
  }
}
