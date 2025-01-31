import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/core/api/api_service.dart';
import 'package:ui/cubits/blog_cubit/blog_cubit.dart';
import 'package:ui/cubits/dashboard/team_cubit/team_cubit.dart';
import 'package:ui/cubits/login_cubit/login_cubit.dart';
import 'package:ui/cubits/service_cubit/service_cubit/service_cubit.dart';
import 'package:ui/cubits/sing_up_cubit/singup_cubit.dart';
import 'package:ui/cubits/testimonils/testimonils_cubit/testimonils_cubit.dart';
import 'package:ui/screens/dashboard_screen/main_dashboard.dart';
import 'package:ui/services/login_service/login_service_implmentation.dart';
import 'package:ui/services/sing_up_service/sing_up_service_implmentation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //TestimonialService testimonialService = TestimonialService();
    ApiService apiService = ApiService();
    LoginService loginService = LoginService(apiService);
    SingUpServiceImp singUpService = SingUpServiceImp(apiService);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit(loginService)),
        BlocProvider(create: (context) => SingupCubit(singUpService)),
        BlocProvider(create: (context) => ServiceCubit(apiService)),
        BlocProvider(create: (context) => TestimonilsCubit()),
        BlocProvider(create: (context) => BlogCubit()),
        BlocProvider(create: (context) => TeamCubit()),
        // BlocProvider(
        //     create: (_) => DashboardTestimonialCubit(TestimonialService())),
      ],
      child: ScreenUtilInit(
        //designSize: const Size(1596, 1500),a
        minTextAdapt: true,
        splitScreenMode: true,

        builder: (context, child) {
          return MaterialApp(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            home: const MainDashboard(),
          );
        },
      ),
    );
  }
}
