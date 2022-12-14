import 'package:flutter/material.dart';

import '../../models/location.dart';
import 'image_banner.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;
  const LocationDetail(this._locationID, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Location? location = Location.fetchById(_locationID);
    return Scaffold(
      appBar: AppBar(title: Text(location!.name)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ImageBanner(location.imagePath), ...textSections(location)],
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
