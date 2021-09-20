import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:wassword/cubit/password_cubit.dart';
import 'package:wassword/pages/about_page.dart';
import 'package:wassword/styles/my_colors.dart' as mColors;
import 'package:wassword/styles/my_dimens.dart' as mDimens;
import 'package:wassword/ui/action_button.dart';
import 'package:wassword/ui/custom_slider_thumb_circle.dart';
import 'package:wassword/ui/option_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PasswordCubit(),
      child: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  void _copyToClipboard(String newPassword) {
    Clipboard.setData(new ClipboardData(text: newPassword));

    if (Platform.isAndroid || Platform.isIOS) {
      Fluttertoast.showToast(
          msg: "Password copied to clipboard",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER);
    }
  }

  void _shareGeneratedPassword(String newPassword) {
    Share.share("This is my new password generated with Wassord: $newPassword");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: mColors.backgroundView, // status bar color
        brightness: Brightness.dark, // status bar brightness
        title: Text("Wassword",
            style: GoogleFonts.roboto(
              color: mColors.colorTextLight,
            )),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: IconButton(
              iconSize: 24,
              color: mColors.colorTextLight,
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
              margin: EdgeInsets.all(mDimens.defaultSpace),
              height: 200,
              decoration: new BoxDecoration(
                color: mColors.colorEnabled,
                borderRadius: new BorderRadius.all(
                    Radius.circular(mDimens.roundedCorner)),
              ),
              padding: EdgeInsets.symmetric(horizontal: mDimens.paddingHorizontal),
              alignment: Alignment(0, 0),
              child: Text(
                context.select((PasswordCubit cubit) => cubit.state.password),
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    color: mColors.colorTextDark),
              ),
            ),
            //https://medium.com/flutter-community/flutter-sliders-demystified-4b3ea65879c
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: mColors.colorEnabled,
                trackHeight: mDimens.heightSlider * 1.2,
                inactiveTrackColor: mColors.colorDisabled,
                thumbColor: mColors.colorEnabled,
                thumbShape: CustomSliderThumbCircle(
                  thumbRadius: mDimens.heightSlider,
                  value: context.select(
                      (PasswordCubit cubit) => cubit.state.length)
                )
              ),
              child: Slider(
                  min: 8.0,
                  max: 32.0,
                  divisions: 20,
                  value: context.select(
                      (PasswordCubit cubit) => cubit.state.length.toDouble()),
                  onChanged: (double value) => context
                      .read<PasswordCubit>()
                      .changeLength(value.toInt())),
            ),
            SizedBox(
              height: mDimens.defaultSpace,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mDimens.paddingHorizontal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  OptionButton(
                    title: "Uppercase",
                    description: "ABC",
                    icon: Icons.title,
                    active: context.select(
                        (PasswordCubit cubit) => cubit.state.withUppercase),
                    callback: () =>
                        context.read<PasswordCubit>().changeUppercase(),
                  ),
                  SizedBox(
                    width: mDimens.defaultSpace,
                  ),
                  OptionButton(
                      title: "Lowercase",
                      description: "abc",
                      icon: Icons.format_size,
                      active: context.select(
                          (PasswordCubit cubit) => cubit.state.withLowercase),
                      callback: () =>
                          context.read<PasswordCubit>().changeLowercase()),
                ],
              ),
            ),
            SizedBox(
              height: mDimens.defaultSpace,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mDimens.paddingHorizontal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  OptionButton(
                      title: "Numbers",
                      description: "123",
                      icon: Icons.looks_one,
                      active: context.select(
                          (PasswordCubit cubit) => cubit.state.withNumbers),
                      callback: () =>
                          context.read<PasswordCubit>().changeNumbers()),
                  SizedBox(
                    width: mDimens.defaultSpace,
                  ),
                  OptionButton(
                      title: "Special",
                      description: "@£*",
                      icon: Icons.star,
                      active: context.select(
                          (PasswordCubit cubit) => cubit.state.withSpecial),
                      callback: () =>
                          context.read<PasswordCubit>().changeSpecial()),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            BlocConsumer<PasswordCubit, PasswordState>(
              listener: (context, state) {},
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: mDimens.paddingHorizontal),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ActionButton(
                          text: "Copy",
                          icon: Icons.copy,
                          isMain: false,
                          callback: () => _copyToClipboard(state.password)),
                      ActionButton(
                        text: "Generate",
                        icon: Icons.sync,
                        isMain: true,
                        callback: () =>
                            context.read<PasswordCubit>().updatePassword(),
                      ),
                      ActionButton(
                        text: "Share",
                        icon: Icons.share,
                        isMain: false,
                        callback: () => _shareGeneratedPassword(state.password),
                      )
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: mDimens.defaultSpace,
            ),
          ],
        ),
      ),
    );
  }
}