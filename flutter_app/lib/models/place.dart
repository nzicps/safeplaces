class Place {
  final int id;
  final String name;
  final String description;
  final double latitude;
  final double longitude;
  final bool isSafe;

  Place({
    required this.id,
    required this.name,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.isSafe,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      isSafe: json['is_safe'],
    );
  }
}
