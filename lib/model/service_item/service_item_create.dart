import 'service_item_base.dart';

class ServiceItemCreate extends ServiceItemBase {
  ServiceItemCreate({
    super.description,
    super.descriptionAr,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'descriptionAr': descriptionAr,
    };
  }
}
