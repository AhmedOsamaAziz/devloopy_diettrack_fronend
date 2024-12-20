// class OurTestimonalsModel {
//   final String iconImage;
//   final String pargraph;
//   final String smallImage;
//   final String nameCustomer;

//   const OurTestimonalsModel(
//       {required this.iconImage,
//       required this.pargraph,
//       required this.smallImage,
//       required this.nameCustomer});

//   static const List<OurTestimonalsModel> listCard = [
//     OurTestimonalsModel(
//       iconImage: 'assets/images/Icon-comment.png',
//       pargraph:
//           "I can't thank Nutritionist enough for their personalized It has completely transformed my approach to food and helped me shed those extra pounds. Highly recommended!",
//       smallImage: 'assets/images/cardsmail.png',
//       nameCustomer: 'Jennifer Anderson',
//     ),
//     OurTestimonalsModel(
//       iconImage: 'assets/images/Icon-comment.png',
//       pargraph:
//           "Nutritionist has been a game-changer for me. The expert guidance and support I received from their team made my weight loss journey so much easier. Thank you!",
//       smallImage: 'assets/images/cardsmail2.png',
//       nameCustomer: 'Robert Johnson',
//     ),
//     OurTestimonalsModel(
//       iconImage: 'assets/images/Icon-comment.png',
//       pargraph:
//           "I had struggled with my weight for years until I found Nutritionist. Their personalized approach and tailored nutrition plan made all the difference. I've never felt better!",
//       smallImage: 'assets/images/image-testmonilas1.png',
//       nameCustomer: 'Emily Davis',
//     ),
//   ];
// }

class OurTestimonalsModel {
  final String iconImage;
  final String pargraph;
  final String smallImage;
  final String nameCustomer;

  OurTestimonalsModel({
    required this.iconImage,
    required this.pargraph,
    required this.smallImage,
    required this.nameCustomer,
  });

  // Create a factory constructor to convert from TestimonialBase
  factory OurTestimonalsModel.fromTestimonialBase(Map<String, dynamic> json) {
    return OurTestimonalsModel(
      iconImage: json['iconImage'] ?? '',
      pargraph: json['pargraph'] ?? '',
      smallImage: json['smallImage'] ?? '',
      nameCustomer: json['nameCustomer'] ?? '',
    );
  }
}
