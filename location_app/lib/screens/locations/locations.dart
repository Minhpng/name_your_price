import 'package:flutter/material.dart';

import '../../models/location.dart';

class Locations extends StatelessWidget {
  const Locations({Key? key}) : super(key: key);

  void _onLocationTap() {
    print(this);
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
                  onTap: () => _onLocationTap(),
                ),
              )
              .toList()),
    );
  }
}
