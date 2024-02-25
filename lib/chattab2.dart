import 'package:flt_msg_code_23_02_24/custchat2.dart';
import 'package:flt_msg_code_23_02_24/dummy_db.dart';
import 'package:flutter/material.dart';

class ChatTab2 extends StatelessWidget {
  const ChatTab2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: Dummy_db.usersChatList.length,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      itemBuilder: (context, index) => CustomChart2(
        index: index,
        count: Dummy_db.usersChatList[index]["count"],
        name: Dummy_db.usersChatList[index]["username"],
        lastmessage: Dummy_db.usersChatList[index]["lastmeaassage"],
        time: Dummy_db.usersChatList[index]["time"],
        profilepic: Dummy_db.usersChatList[index]["propick"],
      ),
      separatorBuilder: (context, index) => Divider(
        color: Colors.black.withOpacity(.1),
        indent: 200,
        endIndent: 200,
      ),
    );
  }
}
