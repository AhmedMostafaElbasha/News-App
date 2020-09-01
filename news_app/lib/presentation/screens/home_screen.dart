// Package Imports
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Inner Imports
import '../presentation.dart';
import '../../constants/constants.dart';
import '../../bloc/bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabCotroller;

  @override
  void initState() {
    tabCotroller = TabController(initialIndex: 0, length: 7, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var tabs = kTabNames.map((tabName) => Tab(text: tabName,)).toList();

    var tabBar = TabBar(
      controller: tabCotroller,
      tabs: tabs,
      isScrollable: true,
      indicator: BoxDecoration(
        color: Colors.blueAccent,
        border: Border.all(
          width: 1,
          color: Colors.blueAccent,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      unselectedLabelColor: Colors.black,
      labelColor: Colors.white,
      labelStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );

    return DefaultTabController(
      length: 7,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('NEWS'),
          centerTitle: true,
          bottom: tabBar,
        ),
        drawer: CustomDrawer(tabCotroller),
        body: TabBarView(
          controller: tabCotroller,
          children: kCategoryList
              .map((category) => NewsList(width: width, categoryName: category))
              .toList(),
        ),
      ),
    );
  }
}
