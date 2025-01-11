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

  factory ServiceList.fromJson(Map<String, dynamic> json) {
    return ServiceList(
      id: json['id'] as int? ?? 6,
      name: json['name'] as String? ?? 'Default Name',
      nameAr: json['nameAr'] as String? ?? 'Default Name Arabic',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      validFor: json['validFor'] as String? ?? 'N/A',
      description: json.containsKey('items') && json['items'] is List
          ? (json['items'] as List<dynamic>)
              .map((item) => item['description'] as String? ?? '')
              .join('; ')
          : 'No description available',
      descriptionAr:
          json['descriptionAr'] as String? ?? 'Default Description Arabic',
      isBestValue: json['isBestValue'] as bool? ?? false,
      discount: (json['discount'] as num?)?.toInt(),
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
