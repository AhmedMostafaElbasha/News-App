import 'package:flutter/material.dart';

class GeneralScreen extends StatelessWidget {
  static String routeName = '/general_screen';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'General Screen',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
