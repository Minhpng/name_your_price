import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/locations/locations.dart';
import 'styles.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.montserrat(
            textStyle: appBarTextStyle.copyWith(color: Colors.white),
          ),
        ),
        textTheme: TextTheme(
          titleLarge: TitleTextStyle,
          bodyLarge: BodyTextStyle,
        ),
      ),
      home: const Locations(),
    );
  }
}
