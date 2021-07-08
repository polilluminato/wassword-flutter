import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:wassword/pages/about_page.dart';
import 'package:wassword/stores/password.dart';
import 'package:wassword/styles/my_colors.dart' as mColors;
import 'package:wassword/styles/my_dimens.dart' as mDimens;
import 'package:wassword/ui/action_button.dart';
import 'package:wassword/ui/option_button.dart';

final passwordStore = Password();

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Funzione per copiare la password che ho generato e metterla nella clipboard
  //  in modo che io possa condividerla con altre app
  void _copyToClipboard() {
    Clipboard.setData(new ClipboardData(text: passwordStore.password));
  }

  void _shareGeneratedPassword() {
    Share.share(passwordStore.password);
  }

  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(widget.title,
            style: GoogleFonts.roboto(
              color: Colors.white,
            )),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              iconSize: 24,
              color: Colors.white,
              icon: Icon(Icons.person_outline),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutPage(),
                    ));
              },
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(24),
              height: 200,
              decoration: new BoxDecoration(
                color: mColors.colorEnabled,
                borderRadius: new BorderRadius.all(
                    Radius.circular(mDimens.roundedCorner)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 24),
              alignment: Alignment(0, 0),
              child: Observer(
                builder: (_) => Text(
                  passwordStore.password,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: mColors.colorWhite),
                ),
              ),
            ),
            //https://medium.com/flutter-community/flutter-sliders-demystified-4b3ea65879c
            Observer(
              builder: (_) => SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: mColors.colorEnabled,
                  trackHeight: mDimens.heightSlider,
                  inactiveTrackColor: mColors.colorDisabled,
                  thumbColor: mColors.colorEnabled,
                  thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: mDimens.heightSlider),
                ),
                child: Slider(
                  min: 8.0,
                  max: 32.0,
                  divisions: 20,
                  value: passwordStore.numberCharPassword,
                  onChanged: (double value) {
                    setState(
                      () {
                        passwordStore
                          ..changeLenght(value)
                          ..generateNew();
                      },
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  OptionButton(
                    title: "Uppercase",
                    description: "ABC",
                    icon: Icons.arrow_back,
                    active: false,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  OptionButton(
                    title: "Lowercase",
                    description: "abc",
                    icon: Icons.arrow_back,
                    active: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  OptionButton(
                    title: "Numbers",
                    description: "123",
                    icon: Icons.arrow_back,
                    active: true,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  OptionButton(
                    title: "Special",
                    description: "@£*",
                    icon: Icons.arrow_back,
                    active: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ActionButton(
                    text: "Copy",
                    icon: Icons.copy,
                    isMain: false,
                    callback: () {},
                  ),
                  ActionButton(
                    text: "Generate",
                    icon: Icons.settings,
                    isMain: true,
                    callback: () {},
                  ),
                  ActionButton(
                    text: "Share",
                    icon: Icons.share,
                    isMain: false,
                    callback: () {},
                  )
                ],
              ),
            ),
            // Container(
            //   padding: EdgeInsets.only(top: 20, left: 12, right: 12),
            //   child: new Column(
            //     mainAxisSize: MainAxisSize.min,
            //     children: <Widget>[
            //       new ListTile(
            //         title: Text(
            //           'Lower case letters (a-z)',
            //           style: TextStyle(color: Colors.white, fontSize: 14),
            //         ),
            //         trailing: Observer(
            //           builder: (_) => CupertinoSwitch(
            //             activeColor: mColors.colorEnabled,
            //             value: passwordStore.isWithLetters,
            //             onChanged: (bool value) {
            //               passwordStore
            //                 ..changeLetters(value)
            //                 ..generateNew();
            //             },
            //           ),
            //         ),
            //       ),
            //       new ListTile(
            //         title: Text(
            //           'Uppercase letters (A-Z)',
            //           style: TextStyle(color: Colors.white, fontSize: 14),
            //         ),
            //         trailing: Observer(
            //           builder: (_) => CupertinoSwitch(
            //             activeColor: mColors.colorEnabled,
            //             value: passwordStore.isWithUppercase,
            //             onChanged: (bool value) {
            //               passwordStore
            //                 ..changeUppercase(value)
            //                 ..generateNew();
            //             },
            //           ),
            //         ),
            //       ),
            //       new ListTile(
            //         title: Text('Numbers (0-9)',
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 14,
            //             )),
            //         trailing: Observer(
            //           builder: (_) => CupertinoSwitch(
            //             activeColor: mColors.colorEnabled,
            //             value: passwordStore.isWithNumbers,
            //             onChanged: (bool value) {
            //               passwordStore
            //                 ..changeNumbers(value)
            //                 ..generateNew();
            //             },
            //           ),
            //         ),
            //       ),
            //       new ListTile(
            //         title: Text(
            //           'Special chars (@£*)',
            //           style: TextStyle(color: Colors.white, fontSize: 14),
            //         ),
            //         trailing: Observer(
            //           builder: (_) => CupertinoSwitch(
            //             activeColor: mColors.colorEnabled,
            //             value: passwordStore.isWithSpecial,
            //             onChanged: (bool value) {
            //               passwordStore
            //                 ..changeSpecial(value)
            //                 ..generateNew();
            //             },
            //           ),
            //         ),
            //       ),
            //       new SizedBox(height: 4),
            //       new Row(
            //         mainAxisSize: MainAxisSize.max,
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: <Widget>[
            //           Observer(
            //             builder: (_) => Padding(
            //               padding: EdgeInsets.only(left: 16.0),
            //               child: new Text(
            //                 "Length: ${passwordStore.numberCharPassword.toInt()}",
            //                 style: new TextStyle(
            //                     fontSize: 14,
            //                     fontWeight: FontWeight.normal,
            //                     color: Colors.white),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //       new Container(
            //         margin: EdgeInsets.only(top: 48, bottom: 36),
            //         child: new RaisedButton(
            //           padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            //           color: mColors.colorEnabled,
            //           onPressed: () => passwordStore.generateNew(),
            //           textColor: mColors.colorWhite,
            //           child: new Text("Generate",
            //               style: new TextStyle(
            //                   color: mColors.colorWhite,
            //                   fontSize: 16,
            //                   fontWeight: FontWeight.bold)),
            //           shape: new RoundedRectangleBorder(
            //             borderRadius: new BorderRadius.circular(50),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}







// Positioned(
//   bottom: 18,
//   right: 56,
//   child: IconButton(
//     iconSize: 20,
//     icon: Icon(Icons.content_copy),
//     color: Colors.white,
//     onPressed: _copyToClipboard,
//   ),
// ),
// Positioned(
//   bottom: 18,
//   right: 24,
//   child: IconButton(
//     iconSize: 20,
//     icon: Icon(Icons.share),
//     color: Colors.white,
//     onPressed: _shareGeneratedPassword,
//   ),
// )