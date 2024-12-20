class TeamBase {
  String name;
  String image;
  String position;

  TeamBase({
    required this.name,
    required this.image,
    required this.position,
  });
  factory TeamBase.fromJson(Map<String, dynamic> json) {
    return TeamBase(
      name: json['name'],
      image: json['image'],
      position: json['position'],
    );
  }
  Map<String, dynamic> toJson() => {
        'name': name,
        'image': image,
        'position': position,
      };
}
