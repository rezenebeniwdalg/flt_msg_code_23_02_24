import 'package:flutter/material.dart';

class CustomChart2 extends StatelessWidget {
  const CustomChart2({
    super.key,
    required this.index,
    required this.name,
    required this.lastmessage,
    required this.time,
    required this.profilepic,
    required this.count,
  });
  final int index;
  final String name;
  final String lastmessage;
  final String time;
  final String profilepic;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(profilepic),
            ),
            SizedBox(width: 15),
            // Column(
            //   children: [
            //     Text(name),
            //     SizedBox(
            //       width: 15,
            //     ),
            //     Text(lastmessage)
            //   ],
            // ),
          ],
        ),
        // Column(
        //   children: [
        //     // Text(time),
        //     // SizedBox(
        //     //   height: 7,
        //     // ),
        //     Visibility(
        //         visible: count > 0 ? true : false,
        //         // count > 0
        //         // ?
        //         child: CircleAvatar(
        //           backgroundColor: Colors.green.shade500,
        //           child: Text(
        //             count.toString(),
        //             style: TextStyle(color: Colors.white),
        //           ),
        //           radius: 10,
        //         )
        //         // : SizedBox(),
        //         ),
        //   ],
        // )
      ],
    ));
  }
}
