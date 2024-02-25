import 'package:flt_msg_code_23_02_24/chattab.dart';
// import 'package:flt_msg_code_23_02_24/chattab2.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(Icons.arrow_back_ios),
            title: Text("Message"),
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.all(5),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Column(children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Search a Doctor',
                        suffixIcon:
                            IconButton(icon: Icon(Icons.mic), onPressed: () {}),
                        prefixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Active now",
                          textAlign: TextAlign.left,
                        ),
                      ]),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/20167083/pexels-photo-20167083/free-photo-of-portrait-of-girl-with-hands-on-cheeks.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/16765737/pexels-photo-16765737/free-photo-of-woman-in-coat-taking-pictures-with-camera.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/18128533/pexels-photo-18128533/free-photo-of-kitty-laying-down-on-a-wooden-floor.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/17969770/pexels-photo-17969770/free-photo-of-basketball.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/20241941/pexels-photo-20241941/free-photo-of-cute-cats-near-building.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                      ),
                      // CircleAvatar(
                      //   radius: 30,
                      // ),
                    ],
                    // ),
                  ),
                ),
                Container(
                  child: Text(
                    "Messages",
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  height: 515,
                  color: Colors.white,
                  child: ChatTab(),
                ),
              ]),
            ),
          ),
        ));
  }
}
