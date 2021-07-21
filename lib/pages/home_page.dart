import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wassword/cubit/password_cubit.dart';
import 'package:wassword/pages/about_page.dart';
import 'package:wassword/styles/my_colors.dart' as mColors;
import 'package:wassword/styles/my_dimens.dart' as mDimens;
import 'package:wassword/ui/action_button.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Wassword",
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
              child: Text(
                context.select((PasswordCubit cubit) => cubit.state.password),
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: mColors.colorBlack),
              ),
            ),
            //https://medium.com/flutter-community/flutter-sliders-demystified-4b3ea65879c
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: mColors.colorEnabled,
                trackHeight: mDimens.heightSlider * 1.2,
                inactiveTrackColor: mColors.colorDisabled,
                thumbColor: mColors.colorEnabled,
                thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: mDimens.heightSlider),
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
                    icon: Icons.title,
                    active: context.select(
                        (PasswordCubit cubit) => cubit.state.withUppercase),
                    onPressed: () =>
                        context.read<PasswordCubit>().changeUppercase(),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  OptionButton(
                      title: "Lowercase",
                      description: "abc",
                      icon: Icons.format_size,
                      active: context.select(
                          (PasswordCubit cubit) => cubit.state.withLowercase),
                      onPressed: () =>
                          context.read<PasswordCubit>().changeLowercase()),
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
                      icon: Icons.looks_one,
                      active: context.select(
                          (PasswordCubit cubit) => cubit.state.withNumbers),
                      onPressed: () =>
                          context.read<PasswordCubit>().changeNumbers()),
                  SizedBox(
                    width: 16,
                  ),
                  OptionButton(
                      title: "Special",
                      description: "@£*",
                      icon: Icons.star,
                      active: context.select(
                          (PasswordCubit cubit) => cubit.state.withSpecial),
                      onPressed: () =>
                          context.read<PasswordCubit>().changeSpecial()),
                ],
              ),
            ),
            Expanded(
              child: Container(),
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
                    callback: () =>
                        context.read<PasswordCubit>().updatePassword(),
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
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}


//Funzione per copiare la password che ho generato e metterla nella clipboard
//  in modo che io possa condividerla con altre app
// void _copyToClipboard() {
//   Clipboard.setData(new ClipboardData(text: ""));
// }

// void _shareGeneratedPassword() {
//   Share.share("");
// }
