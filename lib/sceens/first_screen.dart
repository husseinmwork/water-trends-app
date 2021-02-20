import 'package:flutter/material.dart';
import 'package:water_trends_app/sceens/login_Screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2 ), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => Login(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Image.asset(
            "assets/images/image1.png",
            height: 250,
            width: 250,
          ),
        ),
      ),
    );
  }
}
