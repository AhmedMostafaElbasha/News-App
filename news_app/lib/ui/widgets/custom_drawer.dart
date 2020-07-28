import 'package:flutter/material.dart';

import '../screens/business_screen.dart';
import '../screens/entertainment_screen.dart';
import '../screens/general_screen.dart';
import '../screens/health_screen.dart';
import '../screens/science_screen.dart';
import '../screens/sports_screen.dart';
import '../screens/technology_screen.dart';

class CustomDrawer extends StatelessWidget {
  TabController tabCotroller;
  CustomDrawer(this.tabCotroller);

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
              Navigator.pop(context);
              tabCotroller.animateTo(0);
            },
          ),
          ListTile(
            title: Text('Entertainment'),
            onTap: () {
              Navigator.pop(context);
              tabCotroller.animateTo(1);
            },
          ),
          ListTile(
            title: Text('General'),
            onTap: () {
              Navigator.of(context).pop();
              tabCotroller.animateTo(2);
            },
          ),
          ListTile(
            title: Text('Health'),
            onTap: () {
              Navigator.pop(context);
              tabCotroller.animateTo(3);
            },
          ),
          ListTile(
            title: Text('Science'),
            onTap: () {
              Navigator.of(context).pop();
              tabCotroller.animateTo(4);
            },
          ),
          ListTile(
            title: Text('Sports'),
            onTap: () {
              Navigator.pop(context);
              tabCotroller.animateTo(5);
            },
          ),
          ListTile(
            title: Text('Technology'),
            onTap: () {
              Navigator.pop(context);
              tabCotroller.animateTo(6);
            },
          ),
        ],
      ),
    );
  }
}
