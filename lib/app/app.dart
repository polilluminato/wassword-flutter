import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wassword/pages/home_page.dart';
import 'package:wassword/styles/my_colors.dart' as mColors;

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: mColors.backgroundView,
          centerTitle: true,
          elevation: 0,
        ),
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: mColors.backgroundView,
        scaffoldBackgroundColor: mColors.backgroundView,
      ),
      home: const HomePage(),
    );
  }
}
