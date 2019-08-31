import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../styles/my_colors.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Lancio il browser con l'url che devo aprire
    void _launchURL(String urlToLaunch) async {
      if (await canLaunch(urlToLaunch)) {
        await launch(urlToLaunch);
      } else {
        throw 'Could not launch $urlToLaunch';
      }
    }

    return Scaffold(
      backgroundColor: colorGreyLight,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorGreyDark,
        leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: new Text("About"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "DEVELOPER",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, color: colorWhite),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 48,
                    height: 48,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 8,
                    ),
                    Text("Alberto Bonacina",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18, color: colorWhite)),
                    SizedBox(
                      height: 8,
                    ),
                    Text("bonacina.alberto@gmail.com",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16, color: colorWhite)),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Image.asset("assets/icons/ic_github.png"),
                          onPressed: () {
                            _launchURL("https://github.com/polilluminato");
                          },
                        ),
                        IconButton(
                          icon: Image.asset("assets/icons/ic_twitter.png"),
                          onPressed: () {
                            _launchURL("https://twitter.com/polilluminato");
                          },
                        ),
                        IconButton(
                          icon: Image.asset("assets/icons/ic_linkedin.png"),
                          onPressed: () {
                            _launchURL(
                                "https://it.linkedin.com/in/bonacinaalberto");
                          },
                        ),
                        IconButton(
                          icon: Image.asset("assets/icons/ic_website.png"),
                          onPressed: () {
                            _launchURL("https://www.albertobonacina.com/");
                          },
                        ),
                        IconButton(
                          icon: Image.asset("assets/icons/ic_email.png"),
                          onPressed: () {
                            _launchURL("mailto:<bonacina.alberto@gmail.com>");
                          },
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            //An open list of apps built with Flutter
          ],
        ),
      ),
    );
  }
}
