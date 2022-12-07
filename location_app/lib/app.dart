import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:location_app/models/location.dart';
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
      onGenerateRoute: _route(),
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

  RouteFactory _route() {
    return (settings) {
      final arguments = settings.arguments as ScreenArguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = const Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments.id);
          break;
        default:
          return null;
      }

      return MaterialPageRoute(builder: (context) => screen);
    };
  }
}
