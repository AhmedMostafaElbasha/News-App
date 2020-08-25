// Package Imports
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Inner Imports
import './models/models.dart';
import './constants/constants.dart';

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
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: Colors.white,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: kHomeScreen,
          routes: kRoutes,
        ),
      ),
    );
  }
}
