// Package Imports
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Inner Imports
import '../presentation.dart';
import '../../constants/constants.dart';
import '../../bloc/bloc.dart';

class TechnologyScreen extends StatefulWidget {
  @override
  _TechnologyScreenState createState() => _TechnologyScreenState();
}

class _TechnologyScreenState extends State<TechnologyScreen> {
  ArticleBloc _articleBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _articleBloc = BlocProvider.of<ArticleBloc>(context);
    _articleBloc.category = kTechnologyCategory;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return BlocBuilder<ArticleBloc, ArticleState>(
      builder: (context, state) {
        if (state is ArticleInitial) return LoadingState();

        if (state is ArticleFailure) return ErrorState();

        if (state is ArticleSuccess) {
          return state.articles.isEmpty
              ? EmptyState()
              : NewsList(
                  width: width,
                  articles: state.articles,
                );
        }
      },
    );
  }
}
