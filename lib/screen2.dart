import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text("allen"),
          centerTitle: true,
          actions: [Icon(Icons.phone), Icon(Icons.video_call)],
        ),
        body: Column(
          children: [
            Container(
              width: 200,
              child: Text(
                "hello",
                style: TextStyle(color: Colors.blue),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              width: 200,
              child: Text(
                "hello",
                style: TextStyle(color: Colors.blue),
                textAlign: TextAlign.right,
              ),
            ),
            Container(
              width: 200,
              child: Text(
                "hello",
                style: TextStyle(color: Colors.blue),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
