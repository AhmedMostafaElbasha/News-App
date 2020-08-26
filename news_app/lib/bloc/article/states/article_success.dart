// Inner Imports
import '../../bloc.dart';
import '../../../models/models.dart';

class ArticleSuccess extends ArticleState {
  final List<Article> articles;

  const ArticleSuccess({this.articles});

  ArticleSuccess copyWith({List<Article> articles}) {
    return ArticleSuccess(articles: articles ?? this.articles);
  }

  @override
  // TODO: implement props
  List<Object> get props => [this.articles];
}
