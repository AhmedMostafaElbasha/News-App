import 'package:flutter/material.dart';
import 'package:newsapp/data/news_provider.dart';
import 'package:newsapp/ui/widgets/loading_state.dart';
import 'package:newsapp/ui/widgets/news_list.dart';
import 'package:provider/provider.dart';

class GeneralScreen extends StatefulWidget {
  static String routeName = '/general_screen';

  @override
  _GeneralScreenState createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  var _isInit = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<NewsProvider>(context)
          .fetchAndSetNewsItems('general')
          .then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return _isLoading
        ? LoadingState()
        : NewsList(
            width: width,
            categoryName: 'general',
          );
  }
}
