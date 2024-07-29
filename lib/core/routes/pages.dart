import 'package:currecny_converter_app/core/routes/routes.dart';
import 'package:currecny_converter_app/features/home/presentation/pages/home.dart';
import 'package:currecny_converter_app/features/splash/presentation/controllers/splash_controller.dart';
import 'package:currecny_converter_app/features/splash/presentation/pages/spash.dart';
import 'package:get/get.dart';

final List<GetPage> pages = [
  GetPage(
    name: Routes.home,
    page: () => HomePage(),
    transition: Transition.cupertino,
    binding: BindingsBuilder(() {}),
  ),
  GetPage(
    name: Routes.splash,
    page: () => SplashPage(),
    transition: Transition.cupertino,
    binding: BindingsBuilder(() {
      Get.lazyPut<SplashController>(() => SplashController());
    }),
  ),
];
