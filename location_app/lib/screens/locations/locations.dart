import 'package:flutter/material.dart';
import 'package:location_app/app.dart';

import '../../models/location.dart';

class ScreenArguments {
  final String title;
  final dynamic value;

  ScreenArguments(this.title, this.value);
}

class Locations extends StatelessWidget {
  const Locations({Key? key}) : super(key: key);

  void _onLocationTap(BuildContext context, int id) {
    Navigator.pushNamed(context, LocationDetailRoute, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    List<Location> locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Locations'),
      ),
      body: Column(
          children: locations
              .map(
                (location) => GestureDetector(
                  child: Text(location.name),
                  onTap: () => _onLocationTap(context, location.id),
                ),
              )
              .toList()),
    );
  }
}
