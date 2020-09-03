import 'package:flutter/material.dart';

import '../custom_icons.dart';
import '../screens/news_screen.dart';
import '../screens/deals_screen.dart';
import '../screens/look_book.dart';
import '../screens/watch_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.darken,
            ),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 35, right: 15, left: 15),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      CustomIcons.instagram,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    CustomIcons.link,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.shopping_cart),
                          iconSize: 60,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              LookbookScreen.routeName,
                            );
                          },
                        ),
                        Text(
                          'SHOP',
                          style: TextStyle(
                            fontFamily: 'GoogleSans',
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(CustomIcons.live_tv),
                          iconSize: 60,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              WatchScreen.routeName,
                            );
                          },
                        ),
                        Text(
                          'WATCH',
                          style: TextStyle(
                            fontFamily: 'GoogleSans',
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(CustomIcons.attach_money),
                          iconSize: 60,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              DealsScreen.routeName,
                            );
                          },
                        ),
                        Text(
                          'DEALS',
                          style: TextStyle(
                            fontFamily: 'GoogleSans',
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(CustomIcons.bullhorn),
                          iconSize: 60,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              NewsScreen.routeName,
                            );
                          },
                        ),
                        Text(
                          'NEWS',
                          style: TextStyle(
                            fontFamily: 'GoogleSans',
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
