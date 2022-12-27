import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wassword/cubit/password_cubit.dart';
import 'package:wassword/styles/colors.dart';
import 'package:wassword/styles/dimens.dart';
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
            BrandColors.backgroundView, // status bar colortatus bar brightness
        title: Text(
          "Wassword",
          style: GoogleFonts.roboto(
            color: BrandColors.colorTextLight,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                iconSize: 24,
                color: BrandColors.colorTextLight,
                icon: const Icon(Icons.person_outline),
                onPressed: () => context.push('/about')),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(Dimens.defaultSpace),
            height: 160,
            decoration: const BoxDecoration(
              color: BrandColors.colorEnabled,
              borderRadius:
                  BorderRadius.all(Radius.circular(Dimens.roundedCorner)),
            ),
            padding: const EdgeInsets.symmetric(
                horizontal: Dimens.paddingHorizontal),
            alignment: const Alignment(0, 0),
            child: Text(
              context.select((PasswordCubit cubit) => cubit.state.password),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: BrandColors.colorTextDark),
            ),
          ),
          //https://medium.com/flutter-community/flutter-sliders-demystified-4b3ea65879c
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                activeTrackColor: BrandColors.colorEnabled,
                trackHeight: Dimens.heightSlider * 1.1,
                inactiveTrackColor: BrandColors.colorDisabled,
                thumbColor: BrandColors.colorEnabled,
                thumbShape: CustomSliderThumbCircle(
                    thumbRadius: Dimens.heightSlider,
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
          const SizedBox(
            height: Dimens.defaultSpace,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimens.paddingHorizontal),
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
                const SizedBox(
                  width: Dimens.defaultSpace,
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
          const SizedBox(
            height: Dimens.defaultSpace,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimens.paddingHorizontal),
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
                const SizedBox(
                  width: Dimens.defaultSpace,
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
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.paddingHorizontal),
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
                    const SizedBox(
                      height: Dimens.defaultSpace,
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
          const SizedBox(
            height: Dimens.hugeSpace,
          ),
        ],
      ),
    );
  }
}
