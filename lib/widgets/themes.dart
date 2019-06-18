import 'package:flutter/material.dart';

/// Abstracts the custom themeing out of the widgets.
class Themes {

  ThemeData appTheme = ThemeData(

    fontFamily: 'Share Tech Mono',

    textTheme: TextTheme(
      headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      body1: TextStyle(fontSize: 14.0, fontFamily: 'B612'),
    ),

    // THEME COLORS:  0xFF 69858E A2BAC1 CCD7E2 EBEFF4 F4FFFB
    // THEME ACCENTS: 0xFF 258EA6 C6878F A1D2CE

    // Hexadecimals are in the 0xARGB format.
    primaryColor: const Color(0xFF69858E),
    secondaryHeaderColor:const Color(0xFFCCD7E2),
    accentColor: const Color(0xFF258EA6),
    scaffoldBackgroundColor: const Color(0xFFEBEFF4),

    // This is the theme of your application.
    //
    // Try running your application with "flutter run". You'll see the
    // application has a blue toolbar. Then, without quitting the app, try
    // changing the primarySwatch below to Colors.green and then invoke
    // "hot reload" (press "r" in the console where you ran "flutter run",
    // or simply save your changes to "hot reload" in a Flutter IDE).
    // Notice that the counter didn't reset back to zero; the application
    // is not restarted.
    primarySwatch: Colors.blue,
  );

  /// Syntactic sugar to get the default custom theme.
  ThemeData call() => appTheme;
}