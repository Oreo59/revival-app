import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/look_book_item.dart';
import '../providers/lookbook_list.dart';

class LookbookScreen extends StatelessWidget {
  static const routeName = '/lookbook-screen';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final lookBookList = Provider.of<LookBookList>(context);

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
          'GUMBOOTS',
          style: Theme.of(context).textTheme.title,
        ),
        bottom: PreferredSize(
          child: Text(
            '[MAY 2020]',
            style: Theme.of(context).textTheme.subtitle,
          ),
          preferredSize: Size.fromHeight(10),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(51, 51, 51, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 0, left: 10),
                  width: mediaQuery.size.width / 2,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        LookBookItem(
                          height: 404,
                          imageUrl: lookBookList.lookBook[0].imageUrl,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10, left: 0),
                  width: mediaQuery.size.width / 2,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        LookBookItem(
                          height: 200,
                          imageUrl: lookBookList.lookBook[1].imageUrl,
                        ),
                        LookBookItem(
                          height: 200,
                          imageUrl: lookBookList.lookBook[2].imageUrl,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: LookBookItem(
                height: 200,
                imageUrl: lookBookList.lookBook[3].imageUrl,
              ),
            )
          ],
        ),
      ),
    );
  }
}
