// import 'package:flt_msg_code_23_02_24/screen1.dart';
import 'package:flt_msg_code_23_02_24/screen1.dart';
import 'package:flt_msg_code_23_02_24/screen2.dart';
import 'package:flt_msg_code_23_02_24/screen3.dart';
import 'package:flt_msg_code_23_02_24/screen4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexvalue = 0;

  static List<Widget> screens = [
    Home1(),
    Screen2(),
    Message(),
    Screen4(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: screens[indexvalue],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              indexvalue = index;
              setState(() {});
            },
            currentIndex: indexvalue,
            // type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            // selectedIconTheme: IconThemeData(color: Colors.blue),

            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
                // activeIcon: Icon(Icons.delete),
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  label: 'history',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message),
                  label: 'Message',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'profile',
                  backgroundColor: Colors.white),
            ],

            // selectedItemColor: Colors.amber[800],
            // onTap: _onItemTapped,
          ),
        ));
  }
}
