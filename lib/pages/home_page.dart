import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wassword/cubit/password_cubit.dart';
import 'package:wassword/styles/colors.dart' as mcolors;
import 'package:wassword/styles/dimens.dart' as mdimens;
import 'package:wassword/ui/action_button.dart';
import 'package:wassword/ui/custom_slider_thumb_circle.dart';
import 'package:wassword/ui/option_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PasswordCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  void _copyToClipboard(String newPassword) {
    Clipboard.setData(ClipboardData(text: newPassword));

    if (Platform.isAndroid || Platform.isIOS) {
      Fluttertoast.showToast(
          msg: "Password copied to clipboard",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            mcolors.backgroundView, // status bar colortatus bar brightness
        title: Text(
          "Wassword",
          style: GoogleFonts.roboto(
            color: mcolors.colorTextLight,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                iconSize: 24,
                color: mcolors.colorTextLight,
                icon: const Icon(Icons.person_outline),
                onPressed: () => context.push('/about')),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(mdimens.defaultSpace),
            height: 160,
            decoration: BoxDecoration(
              color: mcolors.colorEnabled,
              borderRadius:
                  BorderRadius.all(Radius.circular(mdimens.roundedCorner)),
            ),
            padding:
                EdgeInsets.symmetric(horizontal: mdimens.paddingHorizontal),
            alignment: const Alignment(0, 0),
            child: Text(
              context.select((PasswordCubit cubit) => cubit.state.password),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: mcolors.colorTextDark),
            ),
          ),
          //https://medium.com/flutter-community/flutter-sliders-demystified-4b3ea65879c
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                activeTrackColor: mcolors.colorEnabled,
                trackHeight: mdimens.heightSlider * 1.1,
                inactiveTrackColor: mcolors.colorDisabled,
                thumbColor: mcolors.colorEnabled,
                thumbShape: CustomSliderThumbCircle(
                    thumbRadius: mdimens.heightSlider,
                    value: context
                        .select((PasswordCubit cubit) => cubit.state.length))),
            child: Slider(
                min: 8.0,
                max: 32.0,
                divisions: 20,
                value: context.select(
                    (PasswordCubit cubit) => cubit.state.length.toDouble()),
                onChanged: (double value) =>
                    context.read<PasswordCubit>().changeLength(value.toInt())),
          ),
          SizedBox(
            height: mdimens.defaultSpace,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: mdimens.paddingHorizontal),
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
                  width: mdimens.defaultSpace,
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
            height: mdimens.defaultSpace,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: mdimens.paddingHorizontal),
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
                  width: mdimens.defaultSpace,
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
                padding:
                    EdgeInsets.symmetric(horizontal: mdimens.paddingHorizontal),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ActionButton(
                      text: "Copy",
                      icon: Icons.copy,
                      isMain: false,
                      callback: () => _copyToClipboard(state.password),
                    ),
                    SizedBox(
                      height: mdimens.defaultSpace,
                    ),
                    ActionButton(
                      text: "Generate",
                      icon: Icons.sync,
                      isMain: true,
                      callback: () =>
                          context.read<PasswordCubit>().updatePassword(),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: mdimens.hugeSpace,
          ),
        ],
      ),
    );
  }
}
