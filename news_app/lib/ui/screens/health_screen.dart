import 'package:flutter/material.dart';

class HealthScreen extends StatelessWidget {
  static String routeName = '/health_screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Health Screen',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
