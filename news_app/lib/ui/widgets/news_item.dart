import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newsapp/data/news.dart';

class NewsItem extends StatelessWidget {
  final News news;

  NewsItem({
    @required this.news,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        height: height * 0.20,
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
                child: Image.network(
                  news.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Flexible(
                      child: Row(
                        children: <Widget>[
                          Text(
                            news.publishDate,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Flexible(
                      child: Text(
                        news.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Flexible(
                      child: Text(
                        news.description,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Flexible(
                      child: Text(
                        news.author,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    Flexible(
                      child: Text(
                        news.sourceName,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
