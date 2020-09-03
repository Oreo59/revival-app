import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/deals_list.dart';
import '../widgets/deals_item.dart';

class DealsScreen extends StatelessWidget {
  static const routeName = '/deals-screen';

  @override
  Widget build(BuildContext context) {
    final dealsList = Provider.of<DealsList>(context);
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
          'THIS WEEK\'S DEALS',
          style: Theme.of(context).textTheme.title,
        ),
        bottom: PreferredSize(
          child: Text(
            'GOOD THRU MAY 13',
            style: TextStyle(
              fontFamily: 'GoogleSans',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          preferredSize: Size.fromHeight(10),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(51, 51, 51, 1),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // Text(
            //   'THIS WEEK\'S DEALS',
            //   style: Theme.of(context).textTheme.title,
            // ),
            // Text(
            //   'GOOD THRU APRIL 13',
            //   style: Theme.of(context).textTheme.subtitle,
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: dealsList.deals.length,
                padding: EdgeInsets.only(top: 0),
                itemBuilder: (ctx, i) => DealsItem(
                  title: dealsList.deals[i].title,
                  description: dealsList.deals[i].description,
                  code: dealsList.deals[i].code,
                  isNew: dealsList.deals[i].isNew,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
