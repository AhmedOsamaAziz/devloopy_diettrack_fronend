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
    required super.discount,
  });

  factory ServiceList.fromJson(Map<String, dynamic> json) => ServiceList(
        id: json['id'] as int? ?? 6,
        name: json['name'] as String? ?? 'ffffff',
        nameAr: json['nameAr'] as String? ?? 'ggggg',
        price: (json['price'] as num?)?.toDouble() ?? 0.0,
        validFor: json['validFor'] as String? ?? 'hjjjjjjjjj',
        description: json['description'] as String? ?? 'description error',
        descriptionAr: json['descriptionAr'] as String? ?? 'trrrrrrr',
        isBestValue: json['isBestValue'] as bool? ?? false,
        discount: (json['discount'] as num?)?.toInt(),
      );

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
