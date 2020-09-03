import 'package:flutter/material.dart';

import '../widgets/news_item.dart';

class NewsScreen extends StatelessWidget {
  static const routeName = '/news-screen';

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
          'LATEST POSTS',
          style: Theme.of(context).textTheme.title,
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(51, 51, 51, 1),
      body: Container(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // Expanded(
            NewsItem(),
            NewsItem(),
            NewsItem(),
            // child: ListView.builder(
            //   itemCount: dealsList.deals.length,
            //   padding: EdgeInsets.only(top: 0),
            //   itemBuilder: (ctx, i) => DealsItem(
            //     title: dealsList.deals[i].title,
            //     description: dealsList.deals[i].description,
            //     code: dealsList.deals[i].code,
            //     isNew: dealsList.deals[i].isNew,
            //   ),
            // ),
            // ),
          ],
        ),
      ),
    );
  }
}
