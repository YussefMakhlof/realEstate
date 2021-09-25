import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Constant.dart';
import '../Screens/HomeScreen.dart';
import 'menu/Logo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      home: HomeScreen(),
      theme: ThemeData.dark().copyWith(
        primaryColor: keyPrimaryColor,
        scaffoldBackgroundColor: keyDarkColor,
        canvasColor: keyDarkColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
                bodyText1: TextStyle(
                  color: keyPrimaryColor,
                ),
                bodyText2: TextStyle(color: keyBodyTextColor, height: 1.8),
                headline3: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                    fontWeight: FontWeight.bold),
                headline6: TextStyle(color: keyPrimaryColor, fontSize: 30),),
      ),
    );
  }
}
