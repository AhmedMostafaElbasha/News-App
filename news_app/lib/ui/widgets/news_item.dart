import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NewsItem extends StatelessWidget {
  final String imageUrl;
  final String sourceName;
  final String newsHeadline;
  final String publishDate;

  NewsItem({
    @required this.imageUrl,
    @required this.newsHeadline,
    @required this.publishDate,
    @required this.sourceName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        height: MediaQuery.of(context).size.height * 0.15,
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01,
            bottom: MediaQuery.of(context).size.height * 0.01),
        child: Card(
          elevation: 8,
          child: Row(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.3,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Flexible(
                      child: Row(
                        children: <Widget>[
                          Text(
                            publishDate,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Flexible(
                      child: Text(
                        newsHeadline,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Flexible(
                      child: Text(
                        sourceName,
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
