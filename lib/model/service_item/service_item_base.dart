class ServiceItemBase {
  String? description;
  String? descriptionAr;

  ServiceItemBase({
    this.description,
    this.descriptionAr,
  });

  factory ServiceItemBase.fromJson(Map<String, dynamic> json) {
    return ServiceItemBase(
      description: json['description'],
      descriptionAr: json['descriptionAr'],
    );
  }
  // Add toJson method
  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'descriptionAr': descriptionAr,
    };
  }
}
