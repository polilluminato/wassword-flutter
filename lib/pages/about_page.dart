import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wassword/styles/my_colors.dart' as mColors;
import 'package:wassword/ui/about_row.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  void initState() {
    super.initState();
  }

  //Custom Widget for the ListTile

  //Open the browser with the url provided
  void _launchURL(String urlToLaunch) async {
    if (await canLaunch(urlToLaunch)) {
      await launch(urlToLaunch);
    } else {
      throw 'Could not launch $urlToLaunch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mColors.backgroundView, // status bar color
        brightness: Brightness.dark, // status ba
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: new Text(
          "About",
          style: GoogleFonts.roboto(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 8,
              ),
              ListTile(
                title: Text(
                  "DEVELOPER",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14, color: mColors.colorEnabled),
                ),
              ),
              AboutRow(
                icon: Icons.language,
                title: "AlbertoBonacina.com",
                subtitle: "Website",
                callback: () {
                  _launchURL("https://www.albertobonacina.com/");
                },
              ),
              AboutRow(
                icon: Icons.code,
                title: "@polilluminato",
                subtitle: "Github",
                callback: () {
                  _launchURL("https://github.com/polilluminato");
                },
              ),
              AboutRow(
                icon: Icons.campaign,
                title: "@polilluminato",
                subtitle: "Twitter",
                callback: () {
                  _launchURL("https://twitter.com/polilluminato");
                },
              ),
              AboutRow(
                icon: Icons.business,
                title: "bonacinaalberto",
                subtitle: "Linkedin",
                callback: () {
                  _launchURL("https://it.linkedin.com/in/bonacinaalberto");
                },
              ),
            ],
          ),
          //An open list of apps built with Flutter
        ],
      ),
    );
  }
}
