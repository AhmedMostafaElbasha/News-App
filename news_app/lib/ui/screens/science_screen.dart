import 'package:flutter/material.dart';

class ScienceScreen extends StatelessWidget {
  static String routeName = '/science_screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Science Screen',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
