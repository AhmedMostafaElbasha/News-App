// Package Imports
import 'package:flutter/material.dart';

// Inner Imports
import '../../constants/constants.dart';

class CustomDrawer extends StatelessWidget {
  TabController tabCotroller;
  CustomDrawer(this.tabCotroller);

  @override
  Widget build(BuildContext context) {
    List<ListTile> listTiles = kTabNames
        .map(
          (tabName) => ListTile(
            title: Text(tabName),
            onTap: () {
              Navigator.pop(context);
              tabCotroller.animateTo(kTabNames.indexOf(tabName));
            },
          ),
        )
        .toList();

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
          ...listTiles,
        ],
      ),
    );
  }
}
