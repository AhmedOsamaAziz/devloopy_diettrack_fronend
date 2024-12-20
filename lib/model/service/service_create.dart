import 'service_base.dart';
import '../service_item/service_item_create.dart';

class ServiceCreate extends ServiceBase {
  //int? id;
  List<ServiceItemCreate>? items;

  ServiceCreate({
    //this.id,
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
}
