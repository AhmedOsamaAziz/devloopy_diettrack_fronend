import 'package:ui/model/service_item/service_item_create.dart';
import 'service_base.dart';

class ServiceCreate extends ServiceBase {
  int? id;
  List<ServiceItemCreate>? items;

  ServiceCreate({
    this.id,
    this.items,
    required super.name,
    required super.nameAr,
    required super.price,
    required super.validFor,
    required super.description,
    required super.descriptionAr,
    required super.isBestValue,
    super.discount,
  });

  // Convert the object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'nameAr': nameAr,
      'price': price,
      'validFor': validFor,
      'isBestValue': isBestValue,
      'description': description,
      'descriptionAr': descriptionAr,
      'items': items?.map((item) => item.toJson()).toList(),
    };
  }
}
