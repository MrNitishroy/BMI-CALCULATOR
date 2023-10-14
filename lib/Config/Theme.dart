import 'package:bmi_cal/Config/Colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    background: LBgColor,
    primary: LPrimaryColor,
    onBackground: LFontColor,
    primaryContainer: LDivColor,
    onPrimaryContainer: LFontColor,
    onSecondaryContainer: LLableColor,
  ),
);
var darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    background: DBgColor,
    primary: DPrimaryColor,
    onBackground: DFontColor,
    primaryContainer: DDivColor,
    onPrimaryContainer: DFontColor,
    onSecondaryContainer: DLableColor,
  ),
);
