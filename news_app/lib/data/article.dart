import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Article {
  final String sourceId;
  final String sourceName;
  final String author;
  final String title;
  final String description;
  final String newsUrl;
  final String imageUrl;
  final String content;
  final String publishDate;

  Article({
    @required this.sourceId,
    @required this.sourceName,
    @required this.author,
    @required this.title,
    @required this.description,
    @required this.newsUrl,
    @required this.imageUrl,
    @required this.content,
    @required this.publishDate,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      sourceId: json['source']['id'] == null ? 'N/A' : json['source']['id'],
      sourceName: json['source']['name'],
      author: json['author'] == null ? 'N/A' : json['author'],
      title: json['title'],
      description: json['title'],
      newsUrl: json['url'],
      imageUrl: json['urlToImage'],
      content: json['content'] == null ? '' : json['content'],
      publishDate: DateFormat('dd/MM/yyyy  hh:mm')
          .format(DateTime.parse(json['publishedAt'])),
    );
  }
}
