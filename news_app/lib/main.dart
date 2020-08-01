import 'package:flutter/material.dart';
import 'package:newsapp/data/news_provider.dart';
import 'package:newsapp/ui/screens/article_details_screen.dart';
import 'package:provider/provider.dart';

import './ui/screens/home_screen.dart';
import './ui/screens/business_screen.dart';
import './ui/screens/entertainment_screen.dart';
import './ui/screens/general_screen.dart';
import './ui/screens/health_screen.dart';
import './ui/screens/science_screen.dart';
import './ui/screens/sports_screen.dart';
import './ui/screens/technology_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: NewsProvider()),
      ],
      child: Consumer<NewsProvider>(
        builder: (context, newsData, _) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: Colors.white,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: HomeScreen.routeName,
          routes: {
            HomeScreen.routeName: (context) => HomeScreen(),
            BusinessScreen.routeName: (context) => BusinessScreen(),
            EntertainmentScreen.routeName: (context) => EntertainmentScreen(),
            GeneralScreen.routeName: (context) => GeneralScreen(),
            HealthScreen.routeName: (context) => HealthScreen(),
            ScienceScreen.routeName: (context) => ScienceScreen(),
            SportsScreen.routeName: (context) => SportsScreen(),
            TechnologyScreen.routeName: (context) => TechnologyScreen(),
            ArticleDetailsScreen.routeName: (context) => ArticleDetailsScreen(),
          },
        ),
      ),
    );
  }
}
