import 'package:flutter/material.dart';

class News {
  final String sourceId;
  final String sourceName;
  final String author;
  final String title;
  final String description;
  final String newsUrl;
  final String imageUrl;
  final String content;
  final String publishDate;

  News({
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
}
