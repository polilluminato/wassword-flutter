import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../pages/about_page.dart';
import '../styles/my_colors.dart';

import '../stores/password.dart';

final passwordStore = Password();

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Funzione per copiare la password che ho generato e metterla nella clipboard
  //  in modo che io possa condividerla con altre app
  void _copyToClipboard() {
    Clipboard.setData(new ClipboardData(text: passwordStore.password));

    //Faccio vedere il toast per far capire che ho copiato la password
    Fluttertoast.showToast(
        msg: "Password copied correctly",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM);
  }

  void _shareGeneratedPassword() {
    Share.share(passwordStore.password);
  }

  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: colorGreyDark,
      appBar: new AppBar(
        elevation: 0,
        backgroundColor: colorGreyDark,
        title: Text(widget.title,
            style: GoogleFonts.ubuntu(
              color: Colors.white,
              fontSize: 28,
            )),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: IconButton(
              iconSize: 32,
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
      body: new Column(children: <Widget>[
        new Expanded(
          child: Stack(
            children: [
              Container(
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      colors: [colorAccentDark, colorAccentLight]),
                  shape: BoxShape.rectangle,
                  borderRadius: new BorderRadius.all(Radius.circular(16)),
                ),
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.symmetric(horizontal: 24),
                constraints: BoxConstraints.expand(),
                alignment: Alignment(0, 0),
                child: Observer(
                  builder: (_) => Text(
                    passwordStore.password,
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: colorWhite),
                  ),
                ),
              ),
              Positioned(
                bottom: 28,
                right: 72,
                child: IconButton(
                  iconSize: 24,
                  icon: Icon(Icons.content_copy),
                  color: Colors.white,
                  onPressed: _copyToClipboard,
                ),
              ),
              Positioned(
                bottom: 28,
                right: 28,
                child: IconButton(
                  iconSize: 24,
                  icon: Icon(Icons.share),
                  color: Colors.white,
                  onPressed: _shareGeneratedPassword,
                ),
              )
            ],
          ),
        ),
        new Container(
            padding: EdgeInsets.only(top: 20, left: 12, right: 12),
            child:
                new Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              new ListTile(
                title: Text('Lower case letters (a-z)',
                    style: TextStyle(color: Colors.white)),
                trailing: Observer(
                  builder: (_) => CupertinoSwitch(
                    activeColor: colorAccentLight,
                    value: passwordStore.isWithLetters,
                    onChanged: (bool value) {
                      passwordStore
                        ..changeLetters(value)
                        ..generateNew();
                    },
                  ),
                ),
              ),
              new ListTile(
                title: Text('Uppercase letters (A-Z)',
                    style: TextStyle(color: Colors.white)),
                trailing: Observer(
                  builder: (_) => CupertinoSwitch(
                    activeColor: colorAccentLight,
                    value: passwordStore.isWithUppercase,
                    onChanged: (bool value) {
                      passwordStore
                        ..changeUppercase(value)
                        ..generateNew();
                    },
                  ),
                ),
              ),
              new ListTile(
                title: Text('Numbers (0-9)',
                    style: TextStyle(color: Colors.white)),
                trailing: Observer(
                  builder: (_) => CupertinoSwitch(
                    activeColor: colorAccentLight,
                    value: passwordStore.isWithNumbers,
                    onChanged: (bool value) {
                      passwordStore
                        ..changeNumbers(value)
                        ..generateNew();
                    },
                  ),
                ),
              ),
              new ListTile(
                title: Text('Special chars (@£*)',
                    style: TextStyle(color: Colors.white)),
                trailing: Observer(
                  builder: (_) => CupertinoSwitch(
                    activeColor: colorAccentLight,
                    value: passwordStore.isWithSpecial,
                    onChanged: (bool value) {
                      passwordStore
                        ..changeSpecial(value)
                        ..generateNew();
                    },
                  ),
                ),
              ),
              new SizedBox(height: 4),
              new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Observer(
                    builder: (_) => Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: new Text(
                          "Length: ${passwordStore.numberCharPassword.toInt()}",
                          style: new TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        )),
                  ),
                  Observer(
                      builder: (_) => Slider(
                          min: 8.0,
                          max: 32.0,
                          activeColor: Colors.white,
                          divisions: 20,
                          value: passwordStore.numberCharPassword,
                          //label: '${_numberCharPassword.round()}',
                          onChanged: (double value) {
                            setState(() {
                              passwordStore
                                ..changeLenght(value)
                                ..generateNew();
                            });
                          })),
                ],
              ),
              new Container(
                margin: EdgeInsets.only(top: 48, bottom: 36),
                child: new RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 48, vertical: 12),
                    color: colorAccentLight,
                    onPressed: () => passwordStore.generateNew(),
                    textColor: colorWhite,
                    child: new Text("Generate",
                        style: new TextStyle(
                            color: colorWhite,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50))),
              )
            ]))
      ]),
    );
  }
}
