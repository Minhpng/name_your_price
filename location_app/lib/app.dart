import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:location_app/screens/location_detail/location_detail.dart';

import 'screens/locations/locations.dart';
import 'styles.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _theme(),
      initialRoute: '/',
      onGenerateRoute: _routes(),
      home: const Locations(),
    );
  }

  ThemeData _theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.montserrat(
          textStyle: appBarTextStyle.copyWith(color: Colors.white),
        ),
      ),
      textTheme: TextTheme(
        titleLarge: TitleTextStyle,
        bodyLarge: BodyTextStyle,
      ),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      print(settings.arguments);
      final arguments = settings.arguments as int;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments);
          break;
        default:
          return null;
      }

      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
