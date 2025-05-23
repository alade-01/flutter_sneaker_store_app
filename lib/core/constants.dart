import 'package:flutter/material.dart';

const APP_BAR_LARGE = 80.0;
const APP_BAR_MINI = 50.0;
const DEFAULT_RADIUS = 8.0;
const BTN_HEIGHT = 45.0;
const CURVE_HEIGHT = 160.0;
const AVATAR_RADIUS = CURVE_HEIGHT * 0.28;
const AVATAR_DIAMETER = AVATAR_RADIUS * 2;
const BUTTON_SEPARATION_SPACE = 10.0;
const GRID_SPACING = 20.0;
const TOY_DEFAULT_RATIO = 7 / 8;

const double avatarHeight = 90.0;
const double defaultPadding = 16.0;

enum ButtonType { PRIMARY, SECONDARY, CANCEL, INFO, OTHER, TEXT }

int FROM_GALLERY = 0;

const Color textColor = Color(0xFF172B4D);
const Color lightBlueBackground = Color(0xFFEAEFFF);
const Color backgroundColors = Color.fromRGBO(219, 227, 230, 1);
const MESSAGE_LOADING = "Chargement en cours";
const MESSAGE_EMPTY = "Aucune donnée";

const PRIMARY_FONT = "Poppins";
const SECONDARY_FONT = "Lato";
const USED_FONT = PRIMARY_FONT;

const defaultLetterSpacing = 0.03;

TextStyle textStyleInput = TextStyle(color: secondaryColor, fontSize: 17);

// 0xFF35C2C1 #35C2C1
Map<int, Color> color0 = {
  50: const Color.fromRGBO(205, 18, 31, .1),
  100: const Color.fromRGBO(205, 18, 31, .2),
  200: const Color.fromRGBO(205, 18, 31, .3),
  300: const Color.fromRGBO(205, 18, 31, .4),
  400: const Color.fromRGBO(205, 18, 31, .5),
  500: const Color.fromRGBO(205, 18, 31, .6),
  600: const Color.fromRGBO(205, 18, 31, .7),
  700: const Color.fromRGBO(205, 18, 31, .8),
  800: const Color.fromRGBO(205, 18, 31, .9),
  900: const Color.fromRGBO(205, 18, 31, 1.0),
};

// 0xFF1E232C #1E232C
Map<int, Color> color1 = {
  50: const Color.fromRGBO(30, 35, 44, .1),
  100: const Color.fromRGBO(30, 35, 44, .2),
  200: const Color.fromRGBO(30, 35, 44, .3),
  300: const Color.fromRGBO(30, 35, 44, .4),
  400: const Color.fromRGBO(30, 35, 44, .5),
  500: const Color.fromRGBO(30, 35, 44, .6),
  600: const Color.fromRGBO(30, 35, 44, .7),
  700: const Color.fromRGBO(30, 35, 44, .8),
  800: const Color.fromRGBO(30, 35, 44, .9),
  900: const Color.fromRGBO(30, 35, 44, 1.0),
};

// 0xFF8391A1 #8391A1
Map<int, Color> swatchColor = {
  50: const Color.fromRGBO(131, 145, 161, .1),
  100: const Color.fromRGBO(131, 145, 161, .2),
  200: const Color.fromRGBO(131, 145, 161, .3),
  300: const Color.fromRGBO(131, 145, 161, .4),
  400: const Color.fromRGBO(131, 145, 161, .5),
  500: const Color.fromRGBO(131, 145, 161, .6),
  600: const Color.fromRGBO(131, 145, 161, .7),
  700: const Color.fromRGBO(131, 145, 161, .8),
  800: const Color.fromRGBO(131, 145, 161, .9),
  900: const Color.fromRGBO(131, 145, 161, 1.0),
};

MaterialColor primaryColor = MaterialColor(0xFFCD121F, color0);
MaterialColor secondaryColor = MaterialColor(0xFF1E232C, color1);
MaterialColor swatchColorItem = MaterialColor(0xFF8391A1, swatchColor);

const String Box_profile = 'profile';
const List<String> imagesExtensions = ["png", "jpeg", "gif", "jpg", "tiff"];
const List<String> documentsExtensions = [
  "pdf",
  "doc",
  "xls",
  "xlsx",
  "ppt",
  "pub",
  "docx"
];
const List<String> videosExtensions = [
  "mp4",
  "mov",
  "3gpp",
  "3gp",
];

final regexImojis = RegExp(
    '(\u{D83C}\u{DFF4}\u{DB40}\u{DC67}\u{DB40}\u{DC62}(?:\u{DB40}\u{DC77}\u{DB40}\u{DC6C}\u{DB40}\u{DC73}|\u{DB40}\u{DC73}\u{DB40}\u{DC63}\u{DB40}\u{DC74}|\u{DB40}\u{DC65}\u{DB40}\u{DC6E}\u{DB40}\u{DC67})\u{DB40}\u{DC7F}|\u{D83D}\u{DC69}\u{200D}\u{D83D}\u{DC69}\u{200D}(?:\u{D83D}\u{DC66}\u{200D}\u{D83D}\u{DC66}|\u{D83D}\u{DC67}\u{200D}(?:\u{D83D}[\u{DC66}\u{DC67}]))|\u{D83D}\u{DC68}(?:\u{D83C}\u{DFFF}\u{200D}(?:\u{D83E}\u{DD1D}\u{200D}\u{D83D}\u{DC68}(?:\u{D83C}[\u{DFFB}-\u{DFFE}])|\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}])|\u{D83C}\u{DFFE}\u{200D}(?:\u{D83E}\u{DD1D}\u{200D}\u{D83D}\u{DC68}(?:\u{D83C}[\u{DFFB}-\u{DFFD}\u{DFFF}])|\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}])|\u{D83C}\u{DFFD}\u{200D}(?:\u{D83E}\u{DD1D}\u{200D}\u{D83D}\u{DC68}(?:\u{D83C}[\u{DFFB}\u{DFFC}\u{DFFE}\u{DFFF}])|\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}])|\u{D83C}\u{DFFC}\u{200D}(?:\u{D83E}\u{DD1D}\u{200D}\u{D83D}\u{DC68}(?:\u{D83C}[\u{DFFB}\u{DFFD}-\u{DFFF}])|\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}])|\u{D83C}\u{DFFB}\u{200D}(?:\u{D83E}\u{DD1D}\u{200D}\u{D83D}\u{DC68}(?:\u{D83C}[\u{DFFC}-\u{DFFF}])|\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}])|\u{200D}(?:\u{2764}\u{FE0F}\u{200D}(?:\u{D83D}\u{DC8B}\u{200D})?\u{D83D}\u{DC68}|(?:\u{D83D}[\u{DC68}\u{DC69}])\u{200D}(?:\u{D83D}\u{DC66}\u{200D}\u{D83D}\u{DC66}|\u{D83D}\u{DC67}\u{200D}(?:\u{D83D}[\u{DC66}\u{DC67}]))|\u{D83D}\u{DC66}\u{200D}\u{D83D}\u{DC66}|\u{D83D}\u{DC67}\u{200D}(?:\u{D83D}[\u{DC66}\u{DC67}])|(?:\u{D83D}[\u{DC68}\u{DC69}])\u{200D}(?:\u{D83D}[\u{DC66}\u{DC67}])|[\u{2695}\u{2696}\u{2708}]\u{FE0F}|\u{D83D}[\u{DC66}\u{DC67}]|\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}])|(?:\u{D83C}\u{DFFF}\u{200D}[\u{2695}\u{2696}\u{2708}]|\u{D83C}\u{DFFE}\u{200D}[\u{2695}\u{2696}\u{2708}]|\u{D83C}\u{DFFD}\u{200D}[\u{2695}\u{2696}\u{2708}]|\u{D83C}\u{DFFC}\u{200D}[\u{2695}\u{2696}\u{2708}]|\u{D83C}\u{DFFB}\u{200D}[\u{2695}\u{2696}\u{2708}])\u{FE0F}|\u{D83C}[\u{DFFB}-\u{DFFF}])|\u{D83E}\u{DDD1}(?:(?:\u{D83C}[\u{DFFB}-\u{DFFF}])\u{200D}(?:\u{D83E}\u{DD1D}\u{200D}\u{D83E}\u{DDD1}(?:\u{D83C}[\u{DFFB}-\u{DFFF}])|\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF84}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}])|\u{200D}(?:\u{D83E}\u{DD1D}\u{200D}\u{D83E}\u{DDD1}|\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF84}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}]))|\u{D83D}\u{DC69}(?:\u{200D}(?:\u{2764}\u{FE0F}\u{200D}(?:\u{D83D}\u{DC8B}\u{200D}(?:\u{D83D}[\u{DC68}\u{DC69}])|\u{D83D}[\u{DC68}\u{DC69}])|\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}])|\u{D83C}\u{DFFF}\u{200D}(?:\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}])|\u{D83C}\u{DFFE}\u{200D}(?:\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}])|\u{D83C}\u{DFFD}\u{200D}(?:\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}])|\u{D83C}\u{DFFC}\u{200D}(?:\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}])|\u{D83C}\u{DFFB}\u{200D}(?:\u{D83C}[\u{DF3E}\u{DF73}\u{DF7C}\u{DF93}\u{DFA4}\u{DFA8}\u{DFEB}\u{DFED}]|\u{D83D}[\u{DCBB}\u{DCBC}\u{DD27}\u{DD2C}\u{DE80}\u{DE92}]|\u{D83E}[\u{DDAF}-\u{DDB3}\u{DDBC}\u{DDBD}]))|\u{D83D}\u{DC69}\u{D83C}\u{DFFF}\u{200D}\u{D83E}\u{DD1D}\u{200D}(?:\u{D83D}[\u{DC68}\u{DC69}])(?:\u{D83C}[\u{DFFB}-\u{DFFE}])|\u{D83D}\u{DC69}\u{D83C}\u{DFFE}\u{200D}\u{D83E}\u{DD1D}\u{200D}(?:\u{D83D}[\u{DC68}\u{DC69}])(?:\u{D83C}[\u{DFFB}-\u{DFFD}\u{DFFF}])|\u{D83D}\u{DC69}\u{D83C}\u{DFFD}\u{200D}\u{D83E}\u{DD1D}\u{200D}(?:\u{D83D}[\u{DC68}\u{DC69}])(?:\u{D83C}[\u{DFFB}\u{DFFC}\u{DFFE}\u{DFFF}])|\u{D83D}\u{DC69}\u{D83C}\u{DFFC}\u{200D}\u{D83E}\u{DD1D}\u{200D}(?:\u{D83D}[\u{DC68}\u{DC69}])(?:\u{D83C}[\u{DFFB}\u{DFFD}-\u{DFFF}])|\u{D83D}\u{DC69}\u{D83C}\u{DFFB}\u{200D}\u{D83E}\u{DD1D}\u{200D}(?:\u{D83D}[\u{DC68}\u{DC69}])(?:\u{D83C}[\u{DFFC}-\u{DFFF}])|\u{D83D}\u{DC69}\u{200D}\u{D83D}\u{DC66}\u{200D}\u{D83D}\u{DC66}|\u{D83D}\u{DC69}\u{200D}\u{D83D}\u{DC69}\u{200D}(?:\u{D83D}[\u{DC66}\u{DC67}])|(?:\u{D83D}\u{DC41}\u{FE0F}\u{200D}\u{D83D}\u{DDE8}|\u{D83D}\u{DC69}(?:\u{D83C}\u{DFFF}\u{200D}[\u{2695}\u{2696}\u{2708}]|\u{D83C}\u{DFFE}\u{200D}[\u{2695}\u{2696}\u{2708}]|\u{D83C}\u{DFFD}\u{200D}[\u{2695}\u{2696}\u{2708}]|\u{D83C}\u{DFFC}\u{200D}[\u{2695}\u{2696}\u{2708}]|\u{D83C}\u{DFFB}\u{200D}[\u{2695}\u{2696}\u{2708}]|\u{200D}[\u{2695}\u{2696}\u{2708}])|\u{D83C}\u{DFF3}\u{FE0F}\u{200D}\u{26A7}|\u{D83E}\u{DDD1}(?:(?:\u{D83C}[\u{DFFB}-\u{DFFF}])\u{200D}[\u{2695}\u{2696}\u{2708}]|\u{200D}[\u{2695}\u{2696}\u{2708}])|\u{D83D}\u{DC3B}\u{200D}\u{2744}|(?:\u{D83C}[\u{DFC3}\u{DFC4}\u{DFCA}]|\u{D83D}[\u{DC6E}\u{DC70}\u{DC71}\u{DC73}\u{DC77}\u{DC81}\u{DC82}\u{DC86}\u{DC87}\u{DE45}-\u{DE47}\u{DE4B}\u{DE4D}\u{DE4E}\u{DEA3}\u{DEB4}-\u{DEB6}]|\u{D83E}[\u{DD26}\u{DD35}\u{DD37}-\u{DD39}\u{DD3D}\u{DD3E}\u{DDB8}\u{DDB9}\u{DDCD}-\u{DDCF}\u{DDD6}-\u{DDDD}])(?:\u{D83C}[\u{DFFB}-\u{DFFF}])\u{200D}[\u{2640}\u{2642}]|(?:\u{26F9}|\u{D83C}[\u{DFCB}\u{DFCC}]|\u{D83D}\u{DD75})(?:\u{FE0F}\u{200D}[\u{2640}\u{2642}]|(?:\u{D83C}[\u{DFFB}-\u{DFFF}])\u{200D}[\u{2640}\u{2642}])|\u{D83C}\u{DFF4}\u{200D}\u{2620}|(?:\u{D83C}[\u{DFC3}\u{DFC4}\u{DFCA}]|\u{D83D}[\u{DC6E}-\u{DC71}\u{DC73}\u{DC77}\u{DC81}\u{DC82}\u{DC86}\u{DC87}\u{DE45}-\u{DE47}\u{DE4B}\u{DE4D}\u{DE4E}\u{DEA3}\u{DEB4}-\u{DEB6}]|\u{D83E}[\u{DD26}\u{DD35}\u{DD37}-\u{DD39}\u{DD3C}-\u{DD3E}\u{DDB8}\u{DDB9}\u{DDCD}-\u{DDCF}\u{DDD6}-\u{DDDF}])\u{200D}[\u{2640}\u{2642}])\u{FE0F}|\u{D83D}\u{DC69}\u{200D}\u{D83D}\u{DC67}\u{200D}(?:\u{D83D}[\u{DC66}\u{DC67}])|\u{D83C}\u{DFF3}\u{FE0F}\u{200D}\u{D83C}\u{DF08}|\u{D83D}\u{DC69}\u{200D}\u{D83D}\u{DC67}|\u{D83D}\u{DC69}\u{200D}\u{D83D}\u{DC66}|\u{D83D}\u{DC15}\u{200D}\u{D83E}\u{DDBA}|\u{D83C}\u{DDFD}\u{D83C}\u{DDF0}|\u{D83C}\u{DDF6}\u{D83C}\u{DDE6}|\u{D83C}\u{DDF4}\u{D83C}\u{DDF2}|\u{D83D}\u{DC08}\u{200D}\u{2B1B}|\u{D83E}\u{DDD1}(?:\u{D83C}[\u{DFFB}-\u{DFFF}])|\u{D83D}\u{DC69}(?:\u{D83C}[\u{DFFB}-\u{DFFF}])|\u{D83C}\u{DDFF}(?:\u{D83C}[\u{DDE6}\u{DDF2}\u{DDFC}])|\u{D83C}\u{DDFE}(?:\u{D83C}[\u{DDEA}\u{DDF9}])|\u{D83C}\u{DDFC}(?:\u{D83C}[\u{DDEB}\u{DDF8}])|\u{D83C}\u{DDFB}(?:\u{D83C}[\u{DDE6}\u{DDE8}\u{DDEA}\u{DDEC}\u{DDEE}\u{DDF3}\u{DDFA}])|\u{D83C}\u{DDFA}(?:\u{D83C}[\u{DDE6}\u{DDEC}\u{DDF2}\u{DDF3}\u{DDF8}\u{DDFE}\u{DDFF}])|\u{D83C}\u{DDF9}(?:\u{D83C}[\u{DDE6}\u{DDE8}\u{DDE9}\u{DDEB}-\u{DDED}\u{DDEF}-\u{DDF4}\u{DDF7}\u{DDF9}\u{DDFB}\u{DDFC}\u{DDFF}])|\u{D83C}\u{DDF8}(?:\u{D83C}[\u{DDE6}-\u{DDEA}\u{DDEC}-\u{DDF4}\u{DDF7}-\u{DDF9}\u{DDFB}\u{DDFD}-\u{DDFF}])|\u{D83C}\u{DDF7}(?:\u{D83C}[\u{DDEA}\u{DDF4}\u{DDF8}\u{DDFA}\u{DDFC}])|\u{D83C}\u{DDF5}(?:\u{D83C}[\u{DDE6}\u{DDEA}-\u{DDED}\u{DDF0}-\u{DDF3}\u{DDF7}-\u{DDF9}\u{DDFC}\u{DDFE}])|\u{D83C}\u{DDF3}(?:\u{D83C}[\u{DDE6}\u{DDE8}\u{DDEA}-\u{DDEC}\u{DDEE}\u{DDF1}\u{DDF4}\u{DDF5}\u{DDF7}\u{DDFA}\u{DDFF}])|\u{D83C}\u{DDF2}(?:\u{D83C}[\u{DDE6}\u{DDE8}-\u{DDED}\u{DDF0}-\u{DDFF}])|\u{D83C}\u{DDF1}(?:\u{D83C}[\u{DDE6}-\u{DDE8}\u{DDEE}\u{DDF0}\u{DDF7}-\u{DDFB}\u{DDFE}])|\u{D83C}\u{DDF0}(?:\u{D83C}[\u{DDEA}\u{DDEC}-\u{DDEE}\u{DDF2}\u{DDF3}\u{DDF5}\u{DDF7}\u{DDFC}\u{DDFE}\u{DDFF}])|\u{D83C}\u{DDEF}(?:\u{D83C}[\u{DDEA}\u{DDF2}\u{DDF4}\u{DDF5}])|\u{D83C}\u{DDEE}(?:\u{D83C}[\u{DDE8}-\u{DDEA}\u{DDF1}-\u{DDF4}\u{DDF6}-\u{DDF9}])|\u{D83C}\u{DDED}(?:\u{D83C}[\u{DDF0}\u{DDF2}\u{DDF3}\u{DDF7}\u{DDF9}\u{DDFA}])|\u{D83C}\u{DDEC}(?:\u{D83C}[\u{DDE6}\u{DDE7}\u{DDE9}-\u{DDEE}\u{DDF1}-\u{DDF3}\u{DDF5}-\u{DDFA}\u{DDFC}\u{DDFE}])|\u{D83C}\u{DDEB}(?:\u{D83C}[\u{DDEE}-\u{DDF0}\u{DDF2}\u{DDF4}\u{DDF7}])|\u{D83C}\u{DDEA}(?:\u{D83C}[\u{DDE6}\u{DDE8}\u{DDEA}\u{DDEC}\u{DDED}\u{DDF7}-\u{DDFA}])|\u{D83C}\u{DDE9}(?:\u{D83C}[\u{DDEA}\u{DDEC}\u{DDEF}\u{DDF0}\u{DDF2}\u{DDF4}\u{DDFF}])|\u{D83C}\u{DDE8}(?:\u{D83C}[\u{DDE6}\u{DDE8}\u{DDE9}\u{DDEB}-\u{DDEE}\u{DDF0}-\u{DDF5}\u{DDF7}\u{DDFA}-\u{DDFF}])|\u{D83C}\u{DDE7}(?:\u{D83C}[\u{DDE6}\u{DDE7}\u{DDE9}-\u{DDEF}\u{DDF1}-\u{DDF4}\u{DDF6}-\u{DDF9}\u{DDFB}\u{DDFC}\u{DDFE}\u{DDFF}])|\u{D83C}\u{DDE6}(?:\u{D83C}[\u{DDE8}-\u{DDEC}\u{DDEE}\u{DDF1}\u{DDF2}\u{DDF4}\u{DDF6}-\u{DDFA}\u{DDFC}\u{DDFD}\u{DDFF}])|[#\\*0-9]\u{FE0F}\u{20E3}|(?:\u{D83C}[\u{DFC3}\u{DFC4}\u{DFCA}]|\u{D83D}[\u{DC6E}\u{DC70}\u{DC71}\u{DC73}\u{DC77}\u{DC81}\u{DC82}\u{DC86}\u{DC87}\u{DE45}-\u{DE47}\u{DE4B}\u{DE4D}\u{DE4E}\u{DEA3}\u{DEB4}-\u{DEB6}]|\u{D83E}[\u{DD26}\u{DD35}\u{DD37}-\u{DD39}\u{DD3D}\u{DD3E}\u{DDB8}\u{DDB9}\u{DDCD}-\u{DDCF}\u{DDD6}-\u{DDDD}])(?:\u{D83C}[\u{DFFB}-\u{DFFF}])|(?:\u{26F9}|\u{D83C}[\u{DFCB}\u{DFCC}]|\u{D83D}\u{DD75})(?:\u{D83C}[\u{DFFB}-\u{DFFF}])|(?:[\u{261D}\u{270A}-\u{270D}]|\u{D83C}[\u{DF85}\u{DFC2}\u{DFC7}]|\u{D83D}[\u{DC42}\u{DC43}\u{DC46}-\u{DC50}\u{DC66}\u{DC67}\u{DC6B}-\u{DC6D}\u{DC72}\u{DC74}-\u{DC76}\u{DC78}\u{DC7C}\u{DC83}\u{DC85}\u{DCAA}\u{DD74}\u{DD7A}\u{DD90}\u{DD95}\u{DD96}\u{DE4C}\u{DE4F}\u{DEC0}\u{DECC}]|\u{D83E}[\u{DD0C}\u{DD0F}\u{DD18}-\u{DD1C}\u{DD1E}\u{DD1F}\u{DD30}-\u{DD34}\u{DD36}\u{DD77}\u{DDB5}\u{DDB6}\u{DDBB}\u{DDD2}-\u{DDD5}])(?:\u{D83C}[\u{DFFB}-\u{DFFF}])|(?:[\u{231A}\u{231B}\u{23E9}-\u{23EC}\u{23F0}\u{23F3}\u{25FD}\u{25FE}\u{2614}\u{2615}\u{2648}-\u{2653}\u{267F}\u{2693}\u{26A1}\u{26AA}\u{26AB}\u{26BD}\u{26BE}\u{26C4}\u{26C5}\u{26CE}\u{26D4}\u{26EA}\u{26F2}\u{26F3}\u{26F5}\u{26FA}\u{26FD}\u{2705}\u{270A}\u{270B}\u{2728}\u{274C}\u{274E}\u{2753}-\u{2755}\u{2757}\u{2795}-\u{2797}\u{27B0}\u{27BF}\u{2B1B}\u{2B1C}\u{2B50}\u{2B55}]|\u{D83C}[\u{DC04}\u{DCCF}\u{DD8E}\u{DD91}-\u{DD9A}\u{DDE6}-\u{DDFF}\u{DE01}\u{DE1A}\u{DE2F}\u{DE32}-\u{DE36}\u{DE38}-\u{DE3A}\u{DE50}\u{DE51}\u{DF00}-\u{DF20}\u{DF2D}-\u{DF35}\u{DF37}-\u{DF7C}\u{DF7E}-\u{DF93}\u{DFA0}-\u{DFCA}\u{DFCF}-\u{DFD3}\u{DFE0}-\u{DFF0}\u{DFF4}\u{DFF8}-\u{DFFF}]|\u{D83D}[\u{DC00}-\u{DC3E}\u{DC40}\u{DC42}-\u{DCFC}\u{DCFF}-\u{DD3D}\u{DD4B}-\u{DD4E}\u{DD50}-\u{DD67}\u{DD7A}\u{DD95}\u{DD96}\u{DDA4}\u{DDFB}-\u{DE4F}\u{DE80}-\u{DEC5}\u{DECC}\u{DED0}-\u{DED2}\u{DED5}-\u{DED7}\u{DEEB}\u{DEEC}\u{DEF4}-\u{DEFC}\u{DFE0}-\u{DFEB}]|\u{D83E}[\u{DD0C}-\u{DD3A}\u{DD3C}-\u{DD45}\u{DD47}-\u{DD78}\u{DD7A}-\u{DDCB}\u{DDCD}-\u{DDFF}\u{DE70}-\u{DE74}\u{DE78}-\u{DE7A}\u{DE80}-\u{DE86}\u{DE90}-\u{DEA8}\u{DEB0}-\u{DEB6}\u{DEC0}-\u{DEC2}\u{DED0}-\u{DED6}])|(?:[#\\*0-9\\xA9\\xAE\u{203C}\u{2049}\u{2122}\u{2139}\u{2194}-\u{2199}\u{21A9}\u{21AA}\u{231A}\u{231B}\u{2328}\u{23CF}\u{23E9}-\u{23F3}\u{23F8}-\u{23FA}\u{24C2}\u{25AA}\u{25AB}\u{25B6}\u{25C0}\u{25FB}-\u{25FE}\u{2600}-\u{2604}\u{260E}\u{2611}\u{2614}\u{2615}\u{2618}\u{261D}\u{2620}\u{2622}\u{2623}\u{2626}\u{262A}\u{262E}\u{262F}\u{2638}-\u{263A}\u{2640}\u{2642}\u{2648}-\u{2653}\u{265F}\u{2660}\u{2663}\u{2665}\u{2666}\u{2668}\u{267B}\u{267E}\u{267F}\u{2692}-\u{2697}\u{2699}\u{269B}\u{269C}\u{26A0}\u{26A1}\u{26A7}\u{26AA}\u{26AB}\u{26B0}\u{26B1}\u{26BD}\u{26BE}\u{26C4}\u{26C5}\u{26C8}\u{26CE}\u{26CF}\u{26D1}\u{26D3}\u{26D4}\u{26E9}\u{26EA}\u{26F0}-\u{26F5}\u{26F7}-\u{26FA}\u{26FD}\u{2702}\u{2705}\u{2708}-\u{270D}\u{270F}\u{2712}\u{2714}\u{2716}\u{271D}\u{2721}\u{2728}\u{2733}\u{2734}\u{2744}\u{2747}\u{274C}\u{274E}\u{2753}-\u{2755}\u{2757}\u{2763}\u{2764}\u{2795}-\u{2797}\u{27A1}\u{27B0}\u{27BF}\u{2934}\u{2935}\u{2B05}-\u{2B07}\u{2B1B}\u{2B1C}\u{2B50}\u{2B55}\u{3030}\u{303D}\u{3297}\u{3299}]|\u{D83C}[\u{DC04}\u{DCCF}\u{DD70}\u{DD71}\u{DD7E}\u{DD7F}\u{DD8E}\u{DD91}-\u{DD9A}\u{DDE6}-\u{DDFF}\u{DE01}\u{DE02}\u{DE1A}\u{DE2F}\u{DE32}-\u{DE3A}\u{DE50}\u{DE51}\u{DF00}-\u{DF21}\u{DF24}-\u{DF93}\u{DF96}\u{DF97}\u{DF99}-\u{DF9B}\u{DF9E}-\u{DFF0}\u{DFF3}-\u{DFF5}\u{DFF7}-\u{DFFF}]|\u{D83D}[\u{DC00}-\u{DCFD}\u{DCFF}-\u{DD3D}\u{DD49}-\u{DD4E}\u{DD50}-\u{DD67}\u{DD6F}\u{DD70}\u{DD73}-\u{DD7A}\u{DD87}\u{DD8A}-\u{DD8D}\u{DD90}\u{DD95}\u{DD96}\u{DDA4}\u{DDA5}\u{DDA8}\u{DDB1}\u{DDB2}\u{DDBC}\u{DDC2}-\u{DDC4}\u{DDD1}-\u{DDD3}\u{DDDC}-\u{DDDE}\u{DDE1}\u{DDE3}\u{DDE8}\u{DDEF}\u{DDF3}\u{DDFA}-\u{DE4F}\u{DE80}-\u{DEC5}\u{DECB}-\u{DED2}\u{DED5}-\u{DED7}\u{DEE0}-\u{DEE5}\u{DEE9}\u{DEEB}\u{DEEC}\u{DEF0}\u{DEF3}-\u{DEFC}\u{DFE0}-\u{DFEB}]|\u{D83E}[\u{DD0C}-\u{DD3A}\u{DD3C}-\u{DD45}\u{DD47}-\u{DD78}\u{DD7A}-\u{DDCB}\u{DDCD}-\u{DDFF}\u{DE70}-\u{DE74}\u{DE78}-\u{DE7A}\u{DE80}-\u{DE86}\u{DE90}-\u{DEA8}\u{DEB0}-\u{DEB6}\u{DEC0}-\u{DEC2}\u{DED0}-\u{DED6}])\u{FE0F}|(?:[\u{261D}\u{26F9}\u{270A}-\u{270D}]|\u{D83C}[\u{DF85}\u{DFC2}-\u{DFC4}\u{DFC7}\u{DFCA}-\u{DFCC}]|\u{D83D}[\u{DC42}\u{DC43}\u{DC46}-\u{DC50}\u{DC66}-\u{DC78}\u{DC7C}\u{DC81}-\u{DC83}\u{DC85}-\u{DC87}\u{DC8F}\u{DC91}\u{DCAA}\u{DD74}\u{DD75}\u{DD7A}\u{DD90}\u{DD95}\u{DD96}\u{DE45}-\u{DE47}\u{DE4B}-\u{DE4F}\u{DEA3}\u{DEB4}-\u{DEB6}\u{DEC0}\u{DECC}]|\u{D83E}[\u{DD0C}\u{DD0F}\u{DD18}-\u{DD1F}\u{DD26}\u{DD30}-\u{DD39}\u{DD3C}-\u{DD3E}\u{DD77}\u{DDB5}\u{DDB6}\u{DDB8}\u{DDB9}\u{DDBB}\u{DDCD}-\u{DDCF}\u{DDD1}-\u{DDDD}]))');
