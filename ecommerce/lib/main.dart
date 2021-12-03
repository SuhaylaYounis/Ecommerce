import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/login/login_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'E-commerce App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        ),
        home: AnimatedSplashScreen(
          duration: 4000,
          splash: Image.asset(
            "images/optimized_large_thumb_stage.jpg",
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          nextScreen: LoginScreen(),
          //calling the page which have the tab bar view as next screen
          splashIconSize: double.infinity,
          //make the icon to cover all space around
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.black87,
        ));
  }
}
