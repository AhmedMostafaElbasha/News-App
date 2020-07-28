import 'package:flutter/material.dart';
import 'package:newsapp/ui/widgets/news_item.dart';

class BusinessScreen extends StatelessWidget {
  static String routeName = '/business_screen';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
      child: ListView.builder(
        itemCount: 16,
        itemBuilder: (context, index) {
          return NewsItem(
            imageUrl:
                'https://static.worldpoliticsreview.com/articles/28135/a_us-china_trade_war-08192019-1.jpg',
            newsHeadline:
                'The Next Stage of the U.S.-China Trade War Will Be Much Worse',
            publishDate: 'Aug. 20, 2019',
            sourceName: 'World Politics Review',
          );
        },
      ),
    );
  }
}
