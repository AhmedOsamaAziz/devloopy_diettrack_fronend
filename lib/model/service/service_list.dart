import 'service_base.dart';

class ServiceList extends ServiceBase {
  int? id;

  ServiceList({
    this.id,
    required super.name,
    required super.nameAr,
    required super.price,
    required super.validFor,
    required super.description,
    required super.descriptionAr,
    required super.isBestValue,
    super.discount,
  });

  factory ServiceList.fromJson(Map<String, dynamic> json) {
    return ServiceList(
      id: json['id'],
      name: json['name'],
      nameAr: json['nameAr'],
      price: json['price'],
      validFor: json['validFor'],
      description: json['description'],
      descriptionAr: json['descriptionAr'],
      isBestValue: json['isBestValue'],
      discount: json['discount'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'nameAr': nameAr,
        'price': price,
        'validFor': validFor,
        'description': description,
        'descriptionAr': descriptionAr,
        'isBestValue': isBestValue,
        'discount': discount,
      };
}
