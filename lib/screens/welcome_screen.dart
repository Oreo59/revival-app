import 'package:flutter/material.dart';
// import 'package:revival_app/my_flutter_app_icons.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'footer_navigation_ bar.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/welcome_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 200),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'This is\nyour season.',
                  style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'GoogleSans',
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                    height: 0.8,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'WELCOME TO THE REVIVAL APPAREL CO. MOBILE EXPERIENCE',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'GoogleSans',
                    color: Colors.white,
                    height: 0.8,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 100),
                  width: 320,
                  child: SignInButton(
                    Buttons.Google,
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(FooterNavigationBar.routeName);
                    },
                    padding: EdgeInsets.all(5),
                  ),

                  // child: SignInButtonBuilder(
                  //   key: ValueKey("Google"),
                  //   text: 'Sign in with Google',
                  //   fontSize: 15,
                  //   textColor: Color.fromRGBO(0, 0, 0, 0.54),
                  //   // textColor: button == Buttons.Google
                  //   //     ? Color.fromRGBO(0, 0, 0, 0.54)
                  //   // : Color(0xFFFFFFFF),
                  //   image: Container(
                  //     margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                  //     child: ClipRRect(
                  //       borderRadius: BorderRadius.circular(8.0),
                  //       child: Image(
                  //         image: AssetImage(
                  //           'assets/logos/google_light.png',
                  //           // button == Buttons.Google
                  //           //     ? 'assets/logos/google_light.png'
                  //           //     : 'assets/logos/google_dark.png',
                  //           package: 'flutter_signin_button',
                  //         ),
                  //         height: 50.0,
                  //       ),
                  //     ),
                  //   ),
                  //   backgroundColor:
                  //       // button == Buttons.Google ? Color(0xFFFFFFFF) : Color(0xFF4285F4),
                  //       Color(0xFFFFFFFF),
                  //   onPressed: () {},
                  //   // ),
                  //   // padding: padding,
                  //   // innerPadding: EdgeInsets.all(0),
                  //   // shape: shape,
                  //   height: 65.0,
                  // ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: 320,
                  height: 46,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(130, 138, 199, 1), //rgb(130,138,199)
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      'Continue with my email',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Roboto'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
