import 'package:flutter/material.dart';
import 'package:revival_app/widgets/news_item.dart';

class WatchScreen extends StatelessWidget {
  static final routeName = 'watch-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 51, 51, 1),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'LOOKBOOKS',
          style: Theme.of(context).textTheme.title,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            NewsItem(),
            NewsItem(),
            NewsItem(),
            NewsItem(),
            NewsItem(),
            NewsItem(),
            NewsItem(),
            NewsItem(),
          ],
        ),
      ),
    );
  }
}
