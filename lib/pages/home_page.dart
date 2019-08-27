import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share/share.dart';

import '../pages/credits_page.dart';
import '../styles/my_colors.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _generatedPassword = "";
  bool _isWithLetters = false;
  final String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
  bool _isWithUppercase = false;
  final String upperCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  bool _isWithNumbers = false;
  final String numbers = "0123456789";
  bool _isWithSpecial = false;
  final String special = "@#=+!£\$%&?[](){}";
  double _numberCharPassword = 8.0;

  /*Funzione per generare le password*/
  void _generatePassword() {
    setState(() {
      //print("Genero password");

      String allowedChars = "";
      int i = 0;
      String result = "";
      if (_isWithLetters) {
        allowedChars += lowerCaseLetters;
      }
      if (_isWithUppercase) {
        allowedChars += upperCaseLetters;
      }
      if (_isWithNumbers) {
        allowedChars += numbers;
      }
      if (_isWithSpecial) {
        allowedChars += special;
      }

      if (allowedChars.length == 0) {
        Fluttertoast.showToast(
            msg: "There aren't allowed chars, no possible password",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIos: 1);
      } else {
        while (i < _numberCharPassword.round()) {
          var rng = new Random();
          //https://stackoverflow.com/a/28614409/7483183
          int randomInt = rng.nextInt(allowedChars.length);
          result += allowedChars[randomInt];
          i++;
        }
        //print(result);
        _generatedPassword = result;
        //showInterstitialAd();
      }
    });
  }

  //Funzione per copiare la password che ho generato e metterla nella clipboard
  //  in modo che io possa condividerla con altre app
  void _copyToClipboard() {
    print("_copyToClipboard");
    Clipboard.setData(new ClipboardData(text: _generatedPassword));

    //Faccio vedere il toast per far capire che ho copiato la password
    Fluttertoast.showToast(
        msg: "Password copied correctly",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1);
  }

  void _shareGeneratedPassword() {
    Share.share(_generatedPassword);
  }

  /*Parte per gli admob*/
  initState() {
    super.initState();
  }
  /*Parte per gli admob*/

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: colorGreyLight,
      appBar: new AppBar(
        elevation: 0,
        backgroundColor: colorGreyLight,
        centerTitle: true,
        title: Text(widget.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            )),
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(Icons.local_play), //pages //local_play //assistant
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreditsPage()),
              );
            },
          ),
        ],
      ),
      body: new Column(children: <Widget>[
        new Expanded(
          child: new Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            constraints: BoxConstraints.expand(),
            alignment: Alignment(0.0, 0.0),
            color: colorGreyLight,
            child: new Text(
              _generatedPassword,
              textAlign: TextAlign.center,
              style: new TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 40, color: colorWhite),
            ),
          ),
        ),
        new Container(
            padding: EdgeInsets.only(top: 20, left: 12, right: 12),
            decoration: new BoxDecoration(
              color: colorGreyDark,
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.vertical(
                top: new Radius.circular(24),
              ),
            ),
            child:
                new Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              new ListTile(
                title: Text('Lower case letters (a-z)',
                    style: TextStyle(color: Colors.white)),
                trailing: CupertinoSwitch(
                  activeColor: Colors.white,
                  value: _isWithLetters,
                  onChanged: (bool value) {
                    setState(() {
                      _isWithLetters = value;
                      _generatePassword();
                    });
                  },
                ),
              ),
              new ListTile(
                title: Text('Uppercase letters (A-Z)',
                    style: TextStyle(color: Colors.white)),
                trailing: CupertinoSwitch(
                  activeColor: Colors.white,
                  value: _isWithUppercase,
                  onChanged: (bool value) {
                    setState(() {
                      _isWithUppercase = value;
                      _generatePassword();
                    });
                  },
                ),
              ),
              new ListTile(
                title: Text('Numbers (0-9)',
                    style: TextStyle(color: Colors.white)),
                trailing: CupertinoSwitch(
                  activeColor: Colors.white,
                  value: _isWithNumbers,
                  onChanged: (bool value) {
                    setState(() {
                      _isWithNumbers = value;
                      _generatePassword();
                    });
                  },
                ),
              ),
              new ListTile(
                title: Text('Special chars (@£*)',
                    style: TextStyle(color: Colors.white)),
                trailing: CupertinoSwitch(
                  value: _isWithSpecial,
                  activeColor: Colors.white,
                  onChanged: (bool value) {
                    setState(() {
                      _isWithSpecial = value;
                      _generatePassword();
                    });
                  },
                ),
              ),

              /*new SwitchListTile(
                  title: const Text('Use special chars (@£*)'),
                  value: _isWithSpecial,
                  onChanged: (bool value) { setState(() { _isWithSpecial = value; }); },
                ),*/
              new SizedBox(height: 12),
              new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: new Text(
                        "Length: ${_numberCharPassword.round()}",
                        style: new TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      )),
                  new Slider(
                      min: 8.0,
                      max: 32.0,
                      activeColor: Colors.white,
                      divisions: 20,
                      value: _numberCharPassword,
                      //label: '${_numberCharPassword.round()}',
                      onChanged: (double value) {
                        setState(() {
                          _numberCharPassword = value;
                          _generatePassword();
                        });
                      })
                ],
              ),
              new Container(
                margin: EdgeInsets.only(top: 48, bottom: 36),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Ink(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.content_copy),
                        color: Colors.white,
                        onPressed: _copyToClipboard,
                      ),
                    ),
                    new RaisedButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: 48, vertical: 12),
                        color: colorGreyLight,
                        onPressed: _generatePassword,
                        textColor: colorAccent,
                        child: new Text("Generate",
                            style: new TextStyle(
                                color: colorWhite,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20))),
                    Ink(
                      decoration: ShapeDecoration(
                        color: colorAccent,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.share),
                        color: Colors.white,
                        onPressed: _shareGeneratedPassword,
                      ),
                    ),
                  ],
                ),
              )
            ]))
      ]),
    );
  }
}
