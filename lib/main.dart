import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';
import 'styles/my_colors.dart' as mColors;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp(new MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Wassword',
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
      home: new HomePage(title: 'Wassword'),
    );
  }
}
