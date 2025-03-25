import 'package:ui/model/service/service_base.dart';
import 'package:ui/model/service_item/service_item_details.dart';

class ServiceList extends ServiceBase {
  int? id;
  List<ServiceItemDetails>? items;

  ServiceList({
    this.id,
    this.items,
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
      id: json['id'],
      name: json['name'],
      nameAr: json['nameAr'],
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      validFor: json['validFor'],
      description: json.containsKey('items') && json['items'] is List
          ? (json['items'] as List<dynamic>)
              .map((item) => item['description'] as String? ?? '')
              .join('; ')
          : json['description'] ?? '',
      descriptionAr: json['descriptionAr'] ?? '',
      isBestValue: json['isBestValue'] as bool? ?? false,
      discount: (json['discount'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((item) => ServiceItemDetails.fromJson(item))
          .toList(),
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
        'items': items?.map((item) => item.toJson()).toList(),
      };
}
