import 'package:currecny_converter_app/core/routes/routes.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/currency_local_data_source.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/currency_remote_data_source.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/i_currency_local_data_source.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/i_currency_remote_data_source.dart';
import 'package:currecny_converter_app/features/home/data/repositories/currency_repository.dart';
import 'package:currecny_converter_app/features/home/domain/repositories/i_currency_repository.dart';
import 'package:currecny_converter_app/features/home/domain/use_cases/get_currencies.dart';
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
      // data sources
      Get.lazyPut<ICurrencyRemoteDataSource>(
        () => CurrencyRemoteDataSource(),
      );
      Get.lazyPut<ICurrencyLocalDataSource>(
        () => CurrencyLocalDataSource(),
      );
      // repositories
      Get.lazyPut<ICurrencyRepository>(
        () => CurrencyRepository(
            remoteDataSource: Get.find(), localDataSource: Get.find()),
      );
      Get.lazyPut<HomeController>(
          () => HomeController(Get.find<GetCurrencies>()));
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
