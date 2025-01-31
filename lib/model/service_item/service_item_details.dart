import 'package:ui/model/service_item/service_item_base.dart';

class ServiceItemDetails extends ServiceItemBase {
  int? id;
  int? serviceID;

  ServiceItemDetails({
    this.id,
    this.serviceID,
    super.description,
    super.descriptionAr,
  });

  factory ServiceItemDetails.fromJson(Map<String, dynamic> json) {
    return ServiceItemDetails(
      id: json['id'],
      serviceID: json['serviceID'],
      description: json['description'],
      descriptionAr: json['descriptionAr'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'serviceID': serviceID,
      'description': description,
      'descriptionAr': descriptionAr,
    };
  }
}
