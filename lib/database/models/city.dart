class City {
  int id;
  String name;

  City({
    this.id,
    this.name,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> cityMap = {
      "name": name,
    };
    if (id != null) cityMap["id"] = id;

    return cityMap;
  }
}
