import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newsapp/data/article.dart';
import 'package:newsapp/ui/screens/article_details_screen.dart';

class NewsItem extends StatelessWidget {
  final Article article;

  NewsItem({
    @required this.article,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(ArticleDetailsScreen.routeName, arguments: article);
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        height: height * 0.21,
        margin: EdgeInsets.only(
          top: height * 0.01,
          bottom: height * 0.01,
        ),
        child: Card(
          elevation: 8,
          child: Row(
            children: <Widget>[
              Container(
                height: height,
                width: width * 0.3,
                child: article.imageUrl != null
                    ? Image.network(
                        article.imageUrl,
                        fit: BoxFit.cover,
                      )
                    : Image.asset('images/no_image_available.png'),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            article.publishDate,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        article.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        article.description,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        softWrap: true,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        article.author,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        article.sourceName,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
