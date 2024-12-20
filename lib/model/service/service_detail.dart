import 'service_base.dart';
import '../service_item/service_item_details.dart';

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
}
