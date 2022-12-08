import 'location_facts.dart';

class Location {
  final String locationId;
  final String imageUrl;
  final String locationName;
  final List<LocationFacts> locationFact;

  const Location(
      this.locationId, this.imageUrl, this.locationName, this.locationFact);

  static Location? fetchById(locationId) {
    List<Location> locations = Location.fetchAll();
    for (var location in locations) {
      if (location.locationId == locationId) {
        return location;
      }
    }
    return null;
  }

  static List<Location> fetchAll() {
    return const [
      Location('1', 'assets/images/m_m.jpg', ' inside Maison Central 1', [
        LocationFacts('Title 1',
            'Ut cupidatat minim ipsum in ipsum. Sint do deserunt ipsum est et duis sint exercitation dolore et eiusmod ullamco. Non aute dolor Lorem sunt pariatur tempor nostrud incididunt tempor velit. Sit non elit magna esse.'),
        LocationFacts('Title 1',
            'Sint do deserunt ipsum est et duis sint exercitation Ullamco est magna exercitation commodo id eu et veniam esse consectetur occaecat veniam magna enim. Sit non elit magna esse.'),
        LocationFacts('Title 1',
            'do deserunt ipsum est et duis sint exercitation veniam esse consectetur occaecat veniam magna enim. Sit non elit magna esse.'),
      ]),
      Location('2', 'assets/images/m_m.jpg', ' inside Maison Central 2', [
        LocationFacts('Title 2',
            'Ut cupidatat minim ipsum in ipsum. Sint do deserunt ipsum est et duis sint exercitation commodo id eu et veniam esse consectetur occaecat veniam magna enim. Sit non elit magna esse.'),
        LocationFacts('Title 2',
            'Sint do deserunt ipsum est et duis sint exercitation dolore et magna exercitation commodo id eu et veniam esse consectetur occaecat veniam magna enim. Sit non elit magna esse.'),
        LocationFacts('Title 2',
            'do deserunt ipsum est et duis sint exercitation dolore et eiusmod ullamco.  exercitation ad ad Lorem. Ullamco est magna exercitation commodo id eu et veniam esse consectetur occaecat veniam magna enim. Sit non elit magna esse.'),
      ]),
      Location('3', 'assets/images/m_m.jpg', ' inside Maison Central 3', [
        LocationFacts('Title 3',
            'Ut cupidatat minim ipsum in ipsum. Sint doommodo id eu et veniam esse consectetur occaecat veniam magna enim. Sit non elit magna esse.'),
        LocationFacts('Title 3',
            'Sint do deserunt ipsum est et duis sint exercitationercitation commodo id eu et veniam esse consectetur occaecat veniam magna enim. Sit non elit magna esse.'),
        LocationFacts('Title 3',
            'do deserunt ipsum est et duis sint exercitation dolore et eiusmod d eu et veniam esse consectetur occaecat veniam magna enim. Sit non elit magna esse.'),
      ]),
    ];
  }
}
