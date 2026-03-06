void main() {
  List<String> planets = [
    "Terre",
    "Mars",
    "Mercure",
    "Saturne",
    "Vénus",
    "Neptune",
    "Uranus",
    "Jupiter",
  ];
  planets.sort();
  print(planets);

  for (String planet in planets) {
    planet = planet.toUpperCase();
    print(planet);
  }

  int i = 0;
  while (i < planets.length) {
    String planet = planets[i];
    print(planet[0]);
    i++;
  }

  i = 0;
  do {
    print((i + 1).toString() + "- " + planets[i]);
    i++;
  } while (i < planets.length);

  i = 0;
  while (i < planets.length) {
    String planete = planets[i];
    String derniereLettre = planete[planete.length - 1].toLowerCase();

    if ("aeiouy".contains(derniereLettre)) {
      print(planete);
    }
    i++;
  }

  planets.add("Pluton");
  print(planets);

  //class

  List<Planet> listPlanets = [
    Planet("Terre", 0.0),
    Planet("Mars", 78.34),
    Planet("Mercure", 91.69),
    Planet("Saturne", 1275.0),
    Planet("Vénus", 41.40),
    Planet("Neptune", 4351.40),
    Planet("Uranus", 2723.95),
    Planet("Jupiter", 628.73),
  ];

  listPlanets.sort((a, b) => a.distanceFromEarth.compareTo(b.distanceFromEarth));
  print("--- Planètes triées par distance ---");
  for (Planet planete in listPlanets) {
    print("${planete.name} : ${planete.distanceFromEarth} Mkm");
  }

  Map<String, String> apollo = {
    "07_1969": "Apollo 11",
    "11_1969": "Apollo 12",
    "02_1971": "Apollo 14",
    "07_1971": "Apollo 15",
    "04_1972": "Apollo 16",
    "12_1972": "Apollo 17",
  };

  print(apollo);
  print(apollo["07_1971"]);
  print(apollo.keys);
  print(apollo.values);
  apollo["07_1969"] = "Neil Armstrong + Buzz Aldrin";
  print(apollo["07_1969"]);

  List <SolarSystemElement> solarSystem = [
    SolarSystemElement("sun", Kind.star),
    SolarSystemElement("earth", Kind.planet),
    SolarSystemElement("moon", Kind.satellite),
    SolarSystemElement("pluton", Kind.satellite),
  ];

  print("--- Eléments du système solaire ---");
  for (SolarSystemElement element in solarSystem) {
    print("${element.name} : ${element.kind}");
  }


}

class Planet {
  String name;
  double distanceFromEarth;
  Planet(this.name, this.distanceFromEarth);
}

enum Kind{
  planet,
  star,
  satellite,
  asteroid,
  comet
}

class SolarSystemElement {
  String name;
  Kind kind;
  SolarSystemElement(this.name, this.kind);
  }
