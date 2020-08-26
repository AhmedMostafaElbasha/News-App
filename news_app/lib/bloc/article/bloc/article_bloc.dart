// Dart Imports
import 'dart:convert';
import 'dart:async';

// Package Imports
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

// Inner Imports
import '../../bloc.dart';
import '../../../models/models.dart';
import '../../../constants/constants.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final http.Client httpClient;
  String category;

  ArticleBloc({@required this.httpClient}) : super(ArticleInitial());

  @override
  Stream<ArticleState> mapEventToState(ArticleEvent event) async* {
    final currentState = state;

    if (event is ArticleFetched) {
      try {
        if (currentState is ArticleInitial) {
          final articles = await fetchAndSetArticles(category);
          yield ArticleSuccess(articles: articles);
          return;
        }
        if (currentState is ArticleSuccess) {
          final articles = await fetchAndSetArticles(category);
          yield articles.isEmpty
              ? currentState.copyWith()
              : ArticleSuccess(articles: currentState.articles + articles);
        }
      } catch (e) {
        yield ArticleFailure();
      }
    }
  }

  Future<List<Article>> fetchAndSetArticles(String category) async {
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

      return loadedArticles;
    } else {
      throw Exception('Failed to retrieve articles. Please try again later.');
    }
  }

  @override
  Stream<Transition<ArticleEvent, ArticleState>> transformEvents(
      Stream<ArticleEvent> events, transitionFn) {
    // TODO: implement transformEvents
    return super.transformEvents(
        events.debounceTime(const Duration(milliseconds: 500)), transitionFn);
  }
}
