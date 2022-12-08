import 'package:flutter/material.dart';
import 'package:location_app/models/location_facts.dart';

import '../../models/get_locations.dart';
import 'location_image.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  final String locationId;
  const LocationDetail(this.locationId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(locationId);
    return Scaffold(
      appBar: AppBar(
        title: Text(location!.locationName),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            LocationImage(location.imageUrl),
            Column(children: [...LocationBody(location.locationFact)])
          ]),
    );
  }

  List<Widget> LocationBody(List<LocationFacts> locationFacts) {
    return locationFacts
        .map((fact) => TextSection(fact.title, fact.description))
        .toList();
  }
}
