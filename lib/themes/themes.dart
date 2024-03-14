

import 'package:flutter/material.dart';
import 'package:ecommerce/themes/app_bar_theme.dart';
import 'package:ecommerce/themes/buttom_sheet_theme.dart';
import 'package:ecommerce/themes/chip_theme.dart';
import 'package:ecommerce/themes/elevated_button_theme.dart';
import 'package:ecommerce/themes/outline_button_theme.dart';
import 'package:ecommerce/themes/text_field_theme.dart';

import 'package:ecommerce/themes/check_box_theme.dart';
import 'package:ecommerce/themes/text_theme.dart';

class TAppTheme {
TAppTheme._();

static ThemeData lightTheme =ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: Colors.yellowAccent,
  textTheme: TTextTheme.lightTextThem,
  chipTheme: TChipTheme.lightChipTheme,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: TAppBarTheme.lightAppBarTheme,
  checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
  bottomSheetTheme: TBottomSheetThem.lightBottomSheetTheme,
  elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  outlinedButtonTheme: TOutLineButtonTheme.lightOutlinebuttonTheme,
  inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme
);

static ThemeData darkTheme =ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextThem,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetThem.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutLineButtonTheme.darkOutlinebuttonTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme
);
}