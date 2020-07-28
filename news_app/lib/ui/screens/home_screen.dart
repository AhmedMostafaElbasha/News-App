import 'package:flutter/material.dart';
import 'package:newsapp/ui/screens/business_screen.dart';
import 'package:newsapp/ui/screens/entertainment_screen.dart';
import 'package:newsapp/ui/screens/general_screen.dart';
import 'package:newsapp/ui/screens/health_screen.dart';
import 'package:newsapp/ui/screens/science_screen.dart';
import 'package:newsapp/ui/screens/sports_screen.dart';
import 'package:newsapp/ui/screens/technology_screen.dart';

import '../widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home_screen';

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
                text: 'Business',
              ),
              Tab(
                text: 'Entertainment',
              ),
              Tab(
                text: 'General',
              ),
              Tab(
                text: 'Health',
              ),
              Tab(
                text: 'Science',
              ),
              Tab(
                text: 'Sports',
              ),
              Tab(
                text: 'Technology',
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
