import 'package:flutter/material.dart';

class EntertainmentScreen extends StatelessWidget {
  static String routeName = '/entertainment_screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Entertainment Screen',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
