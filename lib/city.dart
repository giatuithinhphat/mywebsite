class City {
  const City(this.id, this.name);

  final int id;
  final String name;
}

List<City> cities = [
  City(0, 'A'),
  City(0, 'B'),
  City(0, 'C'),
];

final List<String> cityNames = cities.map((city) => city.name).toList();
