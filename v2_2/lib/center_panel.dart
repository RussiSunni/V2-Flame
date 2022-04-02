import 'package:flutter/material.dart';

import 'LetterBlocks/a_block.dart';
import 'LetterBlocks/b_block.dart';
import 'LetterBlocks/c_block.dart';

class CenterPanel extends StatefulWidget {
  @override
  State<CenterPanel> createState() => _CenterPanelState();
}

class _CenterPanelState extends State<CenterPanel> {
  Color backgroundColor = Color(0xff111111);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        width: 480,
        // height: MediaQuery.of(context).size.height,
        height: 480,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ), //BorderRadius.all,
            border: Border.all(
              color: Colors.white,
              width: 2.0,
            ),
            color: backgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [ABlock(), BBlock(), CBlock()],
        ));
  }
}
