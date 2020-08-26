// Package Imports
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Inner Imports
import '../presentation.dart';
import '../../models/models.dart';

class NewsList extends StatelessWidget {
  final double width;
  // final String categoryName;
  final List<Article> articles;

  NewsList({@required this.width, @required this.articles});

  @override
  Widget build(BuildContext context) {
    // Provider.of<NewsProvider>(context)
    //     .fetchAndSetNewsItems(categoryName)
    //     .then((value) => (_) {});

    // var newsData = Provider.of<NewsProvider>(context);
    // var newsItems = newsData.articles;

    return Container(
      margin: EdgeInsets.all(width * 0.01),
      child: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return NewsItem(
            article: articles[index],
          );
        },
      ),
    );
  }
}
