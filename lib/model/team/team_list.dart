class TeamList {
  String id;
  String name;
  String image; // This will store the image path
  String position;

  TeamList({
    required this.id,
    required this.name,
    required this.image,
    required this.position,
  });

  factory TeamList.fromJson(Map<String, dynamic> json) {
    return TeamList(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      position: json['position'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'position': position,
    };
  }
}
