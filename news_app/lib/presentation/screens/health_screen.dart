// Package Imports
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Inner Imports
import '../presentation.dart';
import '../../constants/constants.dart';
import '../../bloc/bloc.dart';

class HealthScreen extends StatefulWidget {
  @override
  _HealthScreenState createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  ArticleBloc _articleBloc;
  var _isInitialized = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    if (!_isInitialized) {
      _articleBloc = BlocProvider.of<ArticleBloc>(context)
        ..setCategory(kHealthCategory);
    }
    _isInitialized = true;
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
