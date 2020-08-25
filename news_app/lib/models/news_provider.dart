// Dart Imports
import 'dart:convert';

// Package Imports
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Inner Imports
import 'article.dart';
import '../constants/constants.dart';

class NewsProvider with ChangeNotifier {
  List<Article> _articles = [];

  List<Article> get articles => [..._articles];

  Future<void> fetchAndSetNewsItems(String category) async {
    final response = await http.get(
        'https://newsapi.org/v2/top-headlines?category=$category&apiKey=$kApiKey');

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final extractedArticles = responseBody['articles'];
      final List<Article> loadedArticles = [];

      if (extractedArticles == null) {
        throw Exception('there are no articles to load.');
      }

      extractedArticles.forEach((article) {
        loadedArticles.add(Article.fromJson(article));
      });

      _articles = loadedArticles;
    } else {
      throw Exception('Failed to retrieve articles. Please try again later.');
    }
    notifyListeners();
  }
}
