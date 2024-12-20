abstract class ServiceBase {
  String name;
  String nameAr;
  double price;
  String validFor;
  bool isBestValue;
  int? discount;
  String description;
  String descriptionAr;

  ServiceBase({
    required this.name,
    required this.nameAr,
    required this.price,
    required this.validFor,
    this.isBestValue = false,
    this.discount,
    required this.description,
    required this.descriptionAr,
  });
}
