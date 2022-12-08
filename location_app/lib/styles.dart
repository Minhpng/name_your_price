import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const LargeTextSize = 26.0;
const MediumTextSize = 20.0;
const BodyTextSize = 16.0;

const appFamilyFont = GoogleFonts.montserrat;

final appBarTextStyle = appFamilyFont(
  textStyle: const TextStyle(
    fontSize: LargeTextSize,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  ),
);
final titleLargeStyle = appFamilyFont(
  textStyle: const TextStyle(
    fontSize: LargeTextSize,
    fontWeight: FontWeight.w500,
    color: Colors.black87,
  ),
);
final bodyTextStyle = appFamilyFont(
  textStyle: const TextStyle(
    fontSize: BodyTextSize,
    fontWeight: FontWeight.w400,
    color: Colors.black87,
  ),
);
