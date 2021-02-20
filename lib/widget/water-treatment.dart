import 'package:flutter/material.dart';

class WaterTreatment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Text(
          "Water Treatment",
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),
    );
  }
}
