// Package Imports
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/bloc/article/events/article_reload.dart';
import 'package:http/http.dart' as http;

// Inner Imports
import '../presentation.dart';
import '../../constants/constants.dart';
import '../../bloc/bloc.dart';

class NewsList extends StatelessWidget {
  final double width;
  final String categoryName;
  // final List<Article> articles;

  NewsList({@required this.width, @required this.categoryName});

  @override
  Widget build(BuildContext context) {
    var articleBloc = ArticleBloc(httpClient: http.Client())..add(ArticleFetched())..setCategory(categoryName);

    return BlocProvider(
      create: (context) => articleBloc,
      child: _buildList(articleBloc),
    );
  }

  Widget _buildList(ArticleBloc articleBloc) {
    ArticleReload articleReload = ArticleReload();

    return BlocBuilder<ArticleBloc, ArticleState>(
      builder: (context, state) {
        if (state is ArticleInitial) return LoadingState();

        if (state is ArticleFailure) return ErrorState();

        if (state is ArticleSuccess) {
          return state.articles.isEmpty
              ? EmptyState()
              : RefreshIndicator(
                  onRefresh: () => articleBloc.reloadArticles(articleReload),
                  child: Container(
                    margin: EdgeInsets.all(width * 0.01),
                    child: ListView.builder(
                      itemCount: state.articles.length,
                      itemBuilder: (context, index) {
                        return NewsItem(
                          article: state.articles[index],
                        );
                      },
                    ),
                  ),
                );
        }
        return Container();
      },
    );
  }
}
