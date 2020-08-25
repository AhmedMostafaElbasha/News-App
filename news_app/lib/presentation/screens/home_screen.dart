// Package Imports
import 'package:flutter/material.dart';

// Inner Imports
import '../presentation.dart';
import '../../constants/constants.dart';

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
    return DefaultTabController(
      length: 7,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('NEWS'),
          centerTitle: true,
          bottom: TabBar(
            controller: tabCotroller,
            tabs: [
              Tab(
                text: kBusinessTab,
              ),
              Tab(
                text: kEntertainmentTab,
              ),
              Tab(
                text: kGeneralTab,
              ),
              Tab(
                text: kHealthTab,
              ),
              Tab(
                text: kScienceTab,
              ),
              Tab(
                text: kSportsTab,
              ),
              Tab(
                text: kTechnologyTab,
              ),
            ],
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
          ),
        ),
        drawer: CustomDrawer(tabCotroller),
        body: TabBarView(
          controller: tabCotroller,
          children: [
            BusinessScreen(),
            EntertainmentScreen(),
            GeneralScreen(),
            HealthScreen(),
            ScienceScreen(),
            SportsScreen(),
            TechnologyScreen(),
          ],
        ),
      ),
    );
  }
}
