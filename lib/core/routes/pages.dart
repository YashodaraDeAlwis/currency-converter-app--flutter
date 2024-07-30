import 'package:currecny_converter_app/core/routes/routes.dart';
import 'package:currecny_converter_app/features/home/presentation/controllers/home_controller.dart';
import 'package:currecny_converter_app/features/home/presentation/pages/home_page.dart';
import 'package:currecny_converter_app/features/splash/presentation/controllers/splash_controller.dart';
import 'package:currecny_converter_app/features/splash/presentation/pages/spash_page.dart';
import 'package:get/get.dart';

final List<GetPage> pages = [
  GetPage(
    name: Routes.home,
    page: () => HomePage(),
    transition: Transition.cupertino,
    binding: BindingsBuilder(() {
      Get.lazyPut<HomeController>(() => HomeController());
    }),
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
