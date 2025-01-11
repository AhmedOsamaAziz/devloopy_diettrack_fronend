import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class WelcomDescription extends StatelessWidget {
  const WelcomDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "Your trusted source  n is to help you achieve your  loss and health goals through tailored nutrition plans and expert guidance. We understand that every individual is unique, and that's why we believe in providing personalized solutions that fit your lifestyle and preferences.With our team of qualified nutritionists and dietitians, we are dedicated to empowering you with the knowledge and tools you need to make lasting changes. Whether you want to shed those extra pounds, improve your overall well-being, or develop a healthier relationship with food, we are here to support you every step of the way.At Nutritionist, we believe that healthy eating should be enjoyable and sustainable. We emphasize the importance of balanced nutrition, focusing on whole foods and mindful eating practices. Our approach is rooted in scientific research and evidence-based strategies, ensuring that you receive the most up-to-date and accurate information.Join our community of individuals committed to transforming their lives through nutrition. Take control of your health, boost your energy levels, and discover the joy of nourishing your body with wholesome foods. We are here to guide you towards a healthier, happier ",
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 14),
          fontWeight: FontWeight.w400,
          color: ColorsApp.MAINCOLOR),
    );
  }
}
