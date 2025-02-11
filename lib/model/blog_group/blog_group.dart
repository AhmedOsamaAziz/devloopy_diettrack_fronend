class BlogGroup {
  String groupName;
  int id;

  BlogGroup({required this.groupName, required this.id});

  factory BlogGroup.fromJson(Map<String, dynamic> json) => BlogGroup(
        groupName: json['groupName'],
        id: json['id'],
    
      );

  Map<String, dynamic> toJson() => {
        'groupName': groupName,
        'id': id
     
      };
}
