import 'package:astrology_app/horoscopes_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astrology App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        canvasColor: Color.fromARGB(255, 35, 7, 68),
        //fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              bodyText2: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
              headline1: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              headline2: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      routes: {
        '/': (ctx) => HomeScreen(),
        HoroscopesScreen.routeName: (ctx) => HoroscopesScreen(),
      },
    );
  }
}
