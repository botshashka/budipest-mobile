import 'package:flutter/material.dart';

final Map<int, Color> color = {
  50: Color.fromRGBO(0, 0, 0, .1),
  100: Color.fromRGBO(0, 0, 0, .2),
  200: Color.fromRGBO(0, 0, 0, .3),
  300: Color.fromRGBO(0, 0, 0, .4),
  400: Color.fromRGBO(0, 0, 0, .5),
  500: Color.fromRGBO(0, 0, 0, .6),
  600: Color.fromRGBO(0, 0, 0, .7),
  700: Color.fromRGBO(0, 0, 0, .8),
  800: Color.fromRGBO(0, 0, 0, .9),
  900: Color.fromRGBO(0, 0, 0, 1),
};

final MaterialColor black = MaterialColor(0xFF000000, color);

List<String> days = [
  "days.monday",
  "days.tuesday",
  "days.wednesday",
  "days.thursday",
  "days.friday",
  "days.saturday",
  "days.sunday",
];

List<int> possibleOpenHours = [
  0,
  15,
  30,
  45,
  60,
  75,
  90,
  105,
  120,
  135,
  150,
  165,
  180,
  195,
  210,
  225,
  240,
  255,
  270,
  285,
  300,
  315,
  330,
  345,
  360,
  375,
  390,
  405,
  420,
  435,
  450,
  465,
  480,
  495,
  510,
  525,
  540,
  555,
  570,
  585,
  600,
  615,
  630,
  645,
  660,
  675,
  690,
  705,
  720,
  735,
  750,
  765,
  780,
  795,
  810,
  825,
  840,
  855,
  870,
  885,
  900,
  915,
  930,
  945,
  960,
  975,
  990,
  1005,
  1020,
  1035,
  1050,
  1065,
  1080,
  1095,
  1110,
  1125,
  1140,
  1155,
  1170,
  1185,
  1200,
  1215,
  1230,
  1245,
  1260,
  1275,
  1290,
  1305,
  1320,
  1335,
  1350,
  1365,
  1380,
  1395,
  1410,
  1425,
  1440
];
