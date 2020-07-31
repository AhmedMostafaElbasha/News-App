import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import './news.dart';
import '../constants.dart';

class NewsProvider with ChangeNotifier {
  List<News> _newsItems = [];

  List<News> get newsItems => [..._newsItems];

  Future<void> fetchAndSetNewsItems(String category) async {
    final url =
        'https://newsapi.org/v2/top-headlines?category=$category&apiKey=$kApiKey';

    try {
      final response = await http.get(url);
      final extractedData = response.body as List<Map<String, dynamic>>;
      final List<News> loadedNews = [];

      if (extractedData == null) {
        return;
      }

      extractedData.forEach((newsData) {
        loadedNews.add(News(
          sourceId: newsData['source']['id'] == null
              ? 'Unknown'
              : newsData['source']['id'],
          sourceName: newsData['source']['name'],
          author: newsData['author'] == null ? 'Unknown' : newsData['author'],
          title: newsData['title'],
          description: newsData['description'],
          newsUrl: newsData['url'],
          imageUrl: newsData['urlToImage'],
          content: newsData['content'] == null ? '' : newsData['content'],
          publishDate: DateFormat('dd/MM/yyyy  hh:mm', newsData['publishedAt'])
              as String,
        ));

        _newsItems = loadedNews;
        notifyListeners();
      });
    } catch (error) {
      return error;
    }
  }
}
