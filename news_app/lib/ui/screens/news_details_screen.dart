import 'package:flutter/material.dart';
import 'package:newsapp/data/news.dart';

class NewsDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    News news = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: height * 0.4,
            child: Image.network(
              news.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: height * 0.02,
              horizontal: width * 0.01,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  news.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  news.sourceName,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  news.author,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  news.publishDate,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blueGrey,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Divider(
                  height: 1,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  news.description,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                news.content == ''
                    ? Container()
                    : Container(
                        margin: EdgeInsets.symmetric(
                          vertical: height * 0.02,
                          horizontal: width * 0.01,
                        ),
                        child: Column(
                          children: <Widget>[
                            Divider(
                              height: 1,
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
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              news.content,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
