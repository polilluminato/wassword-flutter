import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wassword/styles/colors.dart';
import 'package:wassword/ui/about_row.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  //Open the browser with the url provided
  void _launchURL(String urlToLaunch) async {
    if (!await launchUrl(
      Uri.parse(urlToLaunch),
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $urlToLaunch');
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor:
              BrandColors.backgroundView, // status bar colorstatus ba
          leading: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.pop(),
          ),
          title: Text(
            "About",
            style: GoogleFonts.roboto(
              color: BrandColors.colorTextLight,
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 8,
                ),
                const ListTile(
                  title: Text(
                    "DEVELOPER",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14, color: BrandColors.colorTextLight),
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
                    _launchURL("https://www.github.com/polilluminato");
                  },
                ),
                AboutRow(
                  icon: Icons.campaign,
                  title: "@polilluminato",
                  subtitle: "Twitter",
                  callback: () {
                    _launchURL("https://www.twitter.com/polilluminato");
                  },
                ),
                AboutRow(
                  icon: Icons.business,
                  title: "bonacinaalberto",
                  subtitle: "Linkedin",
                  callback: () {
                    _launchURL("https://www.linkedin.com/in/bonacinaalberto");
                  },
                ),
              ],
            ),
          ],
        ),
      );
}
