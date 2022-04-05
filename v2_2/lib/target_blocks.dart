import 'package:flutter/material.dart';
import 'LetterBlocks/z_block.dart';

class TargetBlocks extends StatefulWidget {
  @override
  State<TargetBlocks> createState() => _TargetBlocksState();
}

class _TargetBlocksState extends State<TargetBlocks> {
  Color backgroundColor = Color(0xff111111);

  String? letter;

  //List<Widget?> letterBlocks = <Widget>[];
  var letterBlocks = List<Widget?>.filled(3, null);
  // var arr = new <Widget?>[](5);

  Widget? letterBlock1;
  Widget? letterBlock2;
  Widget? letterBlock3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
//         DragTarget<Widget>(
//           builder: (
//             BuildContext context,
//             List<dynamic> accepted,
//             List<dynamic> rejected,
//           ) {
//             return Container(
//               margin: EdgeInsets.all(10),
//               height: 60.0,
//               width: 60.0,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(10),
//                 ),
//                 border: Border.all(
//                   color: Colors.white,
//                   width: 2.0,
//                 ),
//               ),
//               //      child: letterBlocks[1],
//             );
//           },
//           onAccept: (data) {
//             setState(() {
//               //    letterBlocks[1] = data;
//             });
//           },
//         ),
//         DragTarget<Widget>(
//           builder: (
//             BuildContext context,
//             List<dynamic> accepted,
//             List<dynamic> rejected,
//           ) {
//             return Container(
//               margin: EdgeInsets.all(10),
//               height: 60.0,
//               width: 60.0,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(10),
//                 ),
//                 border: Border.all(
//                   color: Colors.white,
//                   width: 2.0,
//                 ),
//               ),
//               //  child: letterBlocks[2],
//             );
//           },
//           onAccept: (data) {
//             setState(() {
// //              letterBlocks[2] = data;
//             });
//           },
//        ),
      ],
    );
  }
}
