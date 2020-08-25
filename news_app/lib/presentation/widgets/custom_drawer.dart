// Package Imports
import 'package:flutter/material.dart';

// Inner Imports
import '../../constants/constants.dart';

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
            title: Text(kBusinessTab),
            onTap: () {
              Navigator.pop(context);
              tabCotroller.animateTo(0);
            },
          ),
          ListTile(
            title: Text(kEntertainmentTab),
            onTap: () {
              Navigator.pop(context);
              tabCotroller.animateTo(1);
            },
          ),
          ListTile(
            title: Text(kGeneralTab),
            onTap: () {
              Navigator.of(context).pop();
              tabCotroller.animateTo(2);
            },
          ),
          ListTile(
            title: Text(kHealthTab),
            onTap: () {
              Navigator.pop(context);
              tabCotroller.animateTo(3);
            },
          ),
          ListTile(
            title: Text(kScienceTab),
            onTap: () {
              Navigator.of(context).pop();
              tabCotroller.animateTo(4);
            },
          ),
          ListTile(
            title: Text(kSportsTab),
            onTap: () {
              Navigator.pop(context);
              tabCotroller.animateTo(5);
            },
          ),
          ListTile(
            title: Text(kTechnologyTab),
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
