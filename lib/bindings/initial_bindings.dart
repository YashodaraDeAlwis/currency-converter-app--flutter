import 'package:currecny_converter_app/features/home/data/data_sources/currency_local_data_source.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/currency_remote_data_source.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/i_currency_local_data_source.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/i_currency_remote_data_source.dart';
import 'package:currecny_converter_app/features/home/data/repositories/currency_repository.dart';
import 'package:currecny_converter_app/features/home/domain/repositories/i_currency_repository.dart';
import 'package:currecny_converter_app/features/home/domain/use_cases/get_currencies.dart';
import 'package:currecny_converter_app/features/home/domain/use_cases/get_exchange_amount.dart';
import 'package:get/get.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // local data sources
    Get.lazyPut<ICurrencyLocalDataSource>(
      () => CurrencyLocalDataSource(),
      fenix: true,
    );
    // remote data sources
    Get.lazyPut<ICurrencyRemoteDataSource>(
      () => CurrencyRemoteDataSource(),
      fenix: true,
    );
    // repositories
    Get.lazyPut<ICurrencyRepository>(
      () => CurrencyRepository(
          localDataSource: Get.find(), remoteDataSource: Get.find()),
      fenix: true,
    );
    // use cases
    Get.lazyPut(() => GetCurrencies(Get.find()));
    Get.lazyPut(() => GetExchangeAmount(Get.find()));
  }
}
