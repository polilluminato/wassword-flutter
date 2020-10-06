import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../styles/my_colors.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  //Custom Widget for the ListTile
  ListTile customListTile({String text, IconData icon, String url}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 23,
      ),
      title: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
      onTap: () {
        _launchURL(url);
      },
    );
  }

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
      backgroundColor: colorGreyDark,
      appBar: AppBar(
        backgroundColor: colorGreyDark,
        leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: new Text("About",
            style: GoogleFonts.notoSans(
              color: Colors.white,
            )),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 0),
                child: Text(
                  "Wassword",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Text(
                "v.${_packageInfo.version}+${_packageInfo.buildNumber}",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              SizedBox(
                height: 48,
              ),
              ListTile(
                title: Text(
                  "DEVELOPER",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 12, color: colorAccentLight),
                ),
              ),
              customListTile(
                  icon: MaterialCommunityIcons.web,
                  text: "AlbertoBonacina.com",
                  url: "https://www.albertobonacina.com/"),
              customListTile(
                  icon: Entypo.email,
                  text: "Contact",
                  url: "mailto:bonacina.alberto@gmail.com"),
              customListTile(
                  icon: FontAwesome.github,
                  text: "Github",
                  url: "https://github.com/polilluminato"),
              customListTile(
                  icon: FontAwesome.twitter,
                  text: "Twitter",
                  url: "https://twitter.com/polilluminato"),
              customListTile(
                  icon: FontAwesome.linkedin,
                  text: "Linkedin",
                  url: "https://it.linkedin.com/in/bonacinaalberto"),
            ],
          ),
          //An open list of apps built with Flutter
        ],
      ),
    );
  }
}
