import 'package:flutter/material.dart';

class TechnologyScreen extends StatelessWidget {
  static String routeName = '/technology_screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Technology Screen',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
