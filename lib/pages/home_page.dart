import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share/share.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../pages/about_page.dart';
import '../styles/my_colors.dart';
import '../types/custom_popup_menu.dart';

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

  static List<CustomPopupMenu> choices = <CustomPopupMenu>[
    CustomPopupMenu(title: 'About', icon: Icons.info_outline),
  ];

  void _selectPopUpMenu(CustomPopupMenu choice) {
    if (choice.title == 'About') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AboutPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: colorGreyLight,
      appBar: new AppBar(
        elevation: 0,
        backgroundColor: colorGreyLight,
        title: Text(widget.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            )),
        actions: <Widget>[
          IconButton(
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
        ],
      ),
      body: new Column(children: <Widget>[
        new Expanded(
          child: new Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            constraints: BoxConstraints.expand(),
            alignment: Alignment(0.0, 0.0),
            color: colorGreyLight,
            child: Observer(
              builder: (_) => Text(
                passwordStore.password,
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: colorWhite),
              ),
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
                trailing: Observer(
                  builder: (_) => CupertinoSwitch(
                    activeColor: Colors.white,
                    value: passwordStore.isWithLetters,
                    onChanged: (bool value) {
                      passwordStore.changeLetters(value);
                    },
                  ),
                ),
              ),
              new ListTile(
                title: Text('Uppercase letters (A-Z)',
                    style: TextStyle(color: Colors.white)),
                trailing: Observer(
                  builder: (_) => CupertinoSwitch(
                    activeColor: Colors.white,
                    value: passwordStore.isWithUppercase,
                    onChanged: (bool value) {
                      passwordStore.changeUppercase(value);
                    },
                  ),
                ),
              ),
              new ListTile(
                title: Text('Numbers (0-9)',
                    style: TextStyle(color: Colors.white)),
                trailing: Observer(
                  builder: (_) => CupertinoSwitch(
                    activeColor: Colors.white,
                    value: passwordStore.isWithNumbers,
                    onChanged: (bool value) {
                      passwordStore.changeNumbers(value);
                    },
                  ),
                ),
              ),
              new ListTile(
                title: Text('Special chars (@£*)',
                    style: TextStyle(color: Colors.white)),
                trailing: Observer(
                  builder: (_) => CupertinoSwitch(
                    activeColor: Colors.white,
                    value: passwordStore.isWithSpecial,
                    onChanged: (bool value) {
                      passwordStore.changeSpecial(value);
                    },
                  ),
                ),
              ),
              new SizedBox(height: 12),
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
                              passwordStore.changeLenght(value);
                            });
                          })),
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
                        onPressed: () => {passwordStore.generateNew()},
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
