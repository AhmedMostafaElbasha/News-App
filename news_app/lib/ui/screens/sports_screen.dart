import 'package:flutter/material.dart';

class SportsScreen extends StatelessWidget {
  static String routeName = '/sports_screen';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Sports Screen',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
