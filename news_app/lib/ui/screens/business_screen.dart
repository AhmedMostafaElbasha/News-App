import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {
  static String routeName = '/business_screen';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Business Screen',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
