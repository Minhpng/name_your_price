import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const LargeTextSize = 26.0;
const MediumTextSize = 20.0;
const BodyTextSize = 16.0;

const AppTextFamily = GoogleFonts.montserrat;

TextStyle appBarTextStyle = AppTextFamily(
  textStyle: const TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: LargeTextSize,
    color: Colors.white,
  ),
);

TextStyle TitleTextStyle = AppTextFamily(
  textStyle: const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: LargeTextSize,
    color: Colors.black,
  ),
);

TextStyle BodyTextStyle = AppTextFamily(
  textStyle: const TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: BodyTextSize,
    color: Colors.black,
  ),
);
