class Author {
  int id;
  String name;

  Author({required this.id, required this.name});

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(id: json['id'], name: json['UserName']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
