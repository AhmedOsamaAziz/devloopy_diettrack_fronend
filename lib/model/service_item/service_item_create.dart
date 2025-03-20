import 'service_item_base.dart';

// class ServiceItemCreate extends ServiceItemBase {
//   final int id;
//   final int serviceID;
//
//   ServiceItemCreate({
//     required this.id,
//     required this.serviceID,
//     super.description,
//     super.descriptionAr,
//   });
//
//   factory ServiceItemCreate.fromJson(Map<String, dynamic> json) {
//     return ServiceItemCreate(
//       id: json['id'],
//       serviceID: json['serviceID'],
//       description: json['description'],
//       descriptionAr: json['descriptionAr'],
//     );
//   }
//   @override
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'serviceID': serviceID,
//       'description': description,
//       'descriptionAr': descriptionAr,
//     };
//   }
// }

class ServiceItemCreate extends ServiceItemBase {
  final int id;
  final int serviceID;

  ServiceItemCreate({
    required this.id,
    required this.serviceID,
    String? description,
    String? descriptionAr,
  }) : super(description: description, descriptionAr: descriptionAr);

  factory ServiceItemCreate.fromJson(Map<String, dynamic> json) {
    return ServiceItemCreate(
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
