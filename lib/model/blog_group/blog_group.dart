class BlogGroup {
  String groupName;
  int id;

  BlogGroup({required this.groupName, required this.id});

  factory BlogGroup.fromJson(Map<String, dynamic> json) => BlogGroup(
        groupName: json['groupName'],
        id: json['id'],
        // id: json['id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'groupName': groupName,
        'id': id
        // 'id': id,
      };
}
