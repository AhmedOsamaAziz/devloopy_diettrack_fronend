import '../service_item/service_item_details.dart';
import 'service_base.dart';

class ServiceDetail extends ServiceBase {
  int? id;
  List<ServiceItemDetails>? items;

  ServiceDetail({
    this.id,
    this.items,
    required super.name,
    required super.nameAr,
    required super.price,
    required super.validFor,
    required super.description,
    required super.descriptionAr,
  });
  factory ServiceDetail.fromJson(Map<String, dynamic> json) {
    return ServiceDetail(
      id: json['id'],
      name: json['name'],
      nameAr: json['nameAr'],
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      validFor: json['validFor'],
      description: json['description'],
      descriptionAr: json['descriptionAr'],
      items: (json['items'] as List<dynamic>?)
          ?.map((itemJson) => ServiceItemDetails.fromJson(itemJson))
          .toList(),
    );
  }
}
