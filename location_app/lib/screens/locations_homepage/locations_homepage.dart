import 'package:flutter/material.dart';

import '../../app.dart';
import '../../models/get_locations.dart';

class LocationsHomePage extends StatelessWidget {
  const LocationsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) =>
            _itemBuilder(context, index, locations),
      ),
    );
  }

  InkWell _itemBuilder(context, int index, List<Location> locations) {
    return InkWell(
      onTap: () => _onLocationTap(context, locations[index].locationId),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Text(locations[index].locationName),
      ),
    );
  }

  void _onLocationTap(context, String locationId) {
    Navigator.pushNamed(context, LocationDetailRoute, arguments: locationId);
  }
}
