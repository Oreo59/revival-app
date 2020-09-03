import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/welcome_screen.dart';
import './screens/home_screen.dart';
import './screens/footer_navigation_ bar.dart';
import './screens/deals_screen.dart';
import './providers/deals_list.dart';
import './screens/news_screen.dart';
import 'screens/look_book.dart';
import './providers/lookbook_list.dart';
import './screens/watch_screen.dart';
import './screens/test_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: DealsList(),
        ),
        ChangeNotifierProvider.value(
          value: LookBookList(),
        )
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            canvasColor: Color.fromRGBO(51, 51, 51, 1),
            fontFamily: 'GoogleSans',
            textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
                subtitle: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12,
                )),
          ),
          // home: FooterNavigationBar(),
          home: HomePage(),
          routes: {
            WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
            HomeScreen.routeName: (ctx) => HomeScreen(),
            FooterNavigationBar.routeName: (ctx) => FooterNavigationBar(),
            NewsScreen.routeName: (ctx) => NewsScreen(),
            DealsScreen.routeName: (ctx) => DealsScreen(),
            LookbookScreen.routeName: (ctx) => LookbookScreen(),
            WatchScreen.routeName: (ctx) => WatchScreen(),
          }),
    );
  }
}
