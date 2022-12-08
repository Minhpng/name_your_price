import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/location_detail/location_detail.dart';
import '../screens/locations_homepage/locations_homepage.dart';
import 'styles.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _theme(),
      initialRoute: LocationsRoute,
      onGenerateRoute: _route(),
      home: const LocationsHomePage(),
    );
  }

  ThemeData _theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        titleTextStyle: appBarTextStyle,
      ),
      textTheme: TextTheme(
        titleLarge: titleLargeStyle,
        bodyMedium: bodyTextStyle,
      ),
    );
  }

  RouteFactory _route() {
    return (settings) {
      final arguments = settings.arguments as String;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = const LocationsHomePage();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (context) => screen);
    };
  }
}
