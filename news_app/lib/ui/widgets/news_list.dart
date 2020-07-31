import 'package:flutter/material.dart';
import 'package:newsapp/data/news_provider.dart';
import 'package:provider/provider.dart';

import './news_item.dart';

class NewsList extends StatelessWidget {
  final double width;
  final String categoryName;

  NewsList({
    @required this.width,
    @required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    Provider.of<NewsProvider>(context)
        .fetchAndSetNewsItems(categoryName)
        .then((value) => (_) {});

    var newsData = Provider.of<NewsProvider>(context);
    var newsItems = newsData.newsItems;

    return Container(
      margin: EdgeInsets.all(width * 0.01),
      child: ListView.builder(
        itemCount: newsItems.length,
        itemBuilder: (context, index) {
          return NewsItem(
            news: newsItems[index],
          );
        },
      ),
    );
  }
}
