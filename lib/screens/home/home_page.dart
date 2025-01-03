import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/helper/url_launcher.dart';
import 'package:ui/screens/home/sections/our_blog_section/blog_section.dart';
import 'package:ui/screens/home/sections/service_section/service_section.dart';
import 'package:ui/widgets/Navigation_Bar/main_navigation_bar.dart';

import '../../widgets/Footer/main_footer.dart';
import 'sections/feature_section/features_section.dart';
import 'sections/intorduction_section/introduction_section.dart';
import 'package:ui/cubits/login_cubit/login_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);

    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: () {
          handleButtonClick(
              context: context,
              url: 'https://wa.me/+201152672868',
              buttonText: 'WhatsApp');
        },
        icon: const Icon(FontAwesomeIcons.whatsapp,
            color: Colors.green, size: 40),
      ),
      backgroundColor: const Color(0XFFFAFDF2),
      body: FutureBuilder<bool>(
        future: BlocProvider.of<LoginCubit>(context).isLoggedIn(),
        builder: (context, snapshot) {
          //  if (snapshot.connectionState == ConnectionState.waiting) {
          //   return const Center(child: CircularProgressIndicator());
          // }

          // if (snapshot.hasError) {
          //   return Center(child: Text('Error: ${snapshot.error}'));
          // }

          final isLoggedIn = snapshot.data ?? false;

          return SingleChildScrollView(
            child: Column(
              children: [
                const MainNavigationBar(),
                const IntroductionSection(),
                const FeatureSection(),
                const OurBlogsSection(),
                const ServiceSection(),
                if (isLoggedIn) const MainFooter(),
              ],
            ),
          );
        },
      ),
    );
  }
}
