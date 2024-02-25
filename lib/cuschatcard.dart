import 'package:flt_msg_code_23_02_24/screen2.dart';
import 'package:flutter/material.dart';

class CustomChatCard extends StatelessWidget {
  const CustomChatCard({
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
        //     child: ElevatedButton(
        //       onPressed:() {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => Screen2()),
        //   );
        // },
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 223, 222, 222),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(profilepic),
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Text(name),
                    SizedBox(
                      width: 15,
                    ),
                    Text(lastmessage)
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Text(time),
                SizedBox(
                  height: 7,
                ),
                Visibility(
                    visible: count > 0 ? true : false,
                    // count > 0
                    // ?
                    child: CircleAvatar(
                      backgroundColor: Colors.green.shade500,
                      child: Text(
                        count.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      radius: 10,
                    )
                    // : SizedBox(),
                    ),
              ],
            )
          ],
        ));
  }
}
