import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  List<LocationFact> facts = [];

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, "Arashiyama baboo grove", 'assets/images/m_m.jpg', [
        LocationFact("summary 1",
            "Qui sint Lorem elit est officia nostrud nulla consequat commodo est esse ut. Nulla nisi elit eu magna consectetur minim. Incididunt id laborum proident officia reprehenderit consectetur. Ullamco nostrud anim mollit qui et dolor enim sit officia. Dolore proident id commodo irure commodo quis magna ad velit cupidatat quis eu. Do adipisicing elit irure anim tempor ipsum nisi nisi pariatur ullamco minim ut."),
        LocationFact("summary 1",
            "Culpa nisi duis sit cupidatat velit sit commodo sunt."),
        LocationFact("summary 1",
            "Exercitation nostrud ea in ad in. Dolor eiusmod fugiat eu sit esse. Sunt in excepteur aliqua consectetur sit. Laboris cillum tempor et ut anim adipisicing aute."),
      ]),
      Location(2, "Arashiyama baboo grove", 'assets/images/m_m.jpg', [
        LocationFact("summary 1",
            "Qui sint Lorem elit est officia nostrud nulla consequat commodo est esse ut. Nulla nisi elit eu magna consectetur minim. Incididunt id laborum proident officia reprehenderit consectetur. Ullamco nostrud anim mollit qui et dolor enim sit officia. Dolore proident id commodo irure commodo quis magna ad velit cupidatat quis eu. Do adipisicing elit irure anim tempor ipsum nisi nisi pariatur ullamco minim ut."),
        LocationFact("summary 1",
            "Culpa nisi duis sit cupidatat velit sit commodo sunt."),
        LocationFact("summary 1",
            "Exercitation nostrud ea in ad in. Dolor eiusmod fugiat eu sit esse. Sunt in excepteur aliqua consectetur sit. Laboris cillum tempor et ut anim adipisicing aute."),
      ]),
      Location(3, "Arashiyama baboo grove", 'assets/images/m_m.jpg', [
        LocationFact("summary 1",
            "Qui sint Lorem elit est officia nostrud nulla consequat commodo est esse ut. Nulla nisi elit eu magna consectetur minim. Incididunt id laborum proident officia reprehenderit consectetur. Ullamco nostrud anim mollit qui et dolor enim sit officia. Dolore proident id commodo irure commodo quis magna ad velit cupidatat quis eu. Do adipisicing elit irure anim tempor ipsum nisi nisi pariatur ullamco minim ut."),
        LocationFact("summary 1",
            "Culpa nisi duis sit cupidatat velit sit commodo sunt."),
        LocationFact("summary 1",
            "Exercitation nostrud ea in ad in. Dolor eiusmod fugiat eu sit esse. Sunt in excepteur aliqua consectetur sit. Laboris cillum tempor et ut anim adipisicing aute."),
      ]),
    ];
  }
}
