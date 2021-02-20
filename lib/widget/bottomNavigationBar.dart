import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomNavigationB extends StatefulWidget {
  @override
  _BottomNavigationBState createState() => _BottomNavigationBState();
}

class _BottomNavigationBState extends State<BottomNavigationB> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.amber,
        currentIndex: 1,
        elevation: 5,
        iconSize: 30,
        onTap: (index) {
          return index;
        },
        mouseCursor: MouseCursor.uncontrolled,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "fsfdfd"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "fsfdfd"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "fsfdfd"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "fsfdfd"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "fsfdfd"),
        ]);
  }
}
