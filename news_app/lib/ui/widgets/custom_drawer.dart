import 'package:flutter/material.dart';

import '../screens/business_screen.dart';
import '../screens/entertainment_screen.dart';
import '../screens/general_screen.dart';
import '../screens/health_screen.dart';
import '../screens/science_screen.dart';
import '../screens/sports_screen.dart';
import '../screens/technology_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Breaking News',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            title: Text('Business'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BusinessScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Entertainment'),
          ),
          ListTile(
            title: Text('General'),
          ),
          ListTile(
            title: Text('Health'),
          ),
          ListTile(
            title: Text('Science'),
          ),
          ListTile(
            title: Text('Sports'),
          ),
          ListTile(
            title: Text('Technology'),
          ),
        ],
      ),
    );
  }
}
