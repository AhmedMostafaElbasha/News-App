import 'package:flutter/material.dart';
import 'package:newsapp/data/article.dart';

class ArticleDetailsScreen extends StatelessWidget {
  static const routeName = '/article_details_screen';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    Article article = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: height * 0.4,
                child: Image.network(
                  article.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: height * 0.02,
                  horizontal: width * 0.01,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      article.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      article.sourceName,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      article.author,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      article.publishDate,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blueGrey,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Divider(
                      height: 20,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      article.description,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    article.content == ''
                        ? Container()
                        : Container(
                            margin: EdgeInsets.symmetric(
                              vertical: height * 0.02,
                              horizontal: width * 0.01,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Divider(
                                  height: 40,
                                  color: Colors.blueGrey,
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  'Details:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  article.content,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
