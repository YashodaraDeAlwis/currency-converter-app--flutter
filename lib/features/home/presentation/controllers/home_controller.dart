import 'package:currecny_converter_app/core/entities/currency_dto.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/currency_local_data_source.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/currency_remote_data_source.dart';
import 'package:currecny_converter_app/features/home/data/repositories/currency_repository.dart';
import 'package:currecny_converter_app/features/home/domain/use_cases/delete_currency.dart';
import 'package:currecny_converter_app/features/home/domain/use_cases/get_currencies.dart';
import 'package:currecny_converter_app/features/home/domain/use_cases/save_currency.dart';
import 'package:currecny_converter_app/features/home/domain/use_cases/get_exchange_amount.dart';
import 'package:currecny_converter_app/features/home/domain/use_cases/get_saved_currencies.dart';
import 'package:get/get.dart';
import 'package:fpdart/fpdart.dart'; // Import for Either type

class HomeController extends GetxController {
  final GetCurrencies getCurrenciesUseCase;
  HomeController(this.getCurrenciesUseCase);
/* --------------------------------- private -------------------------------- */

/* ------------------------------- rx private ------------------------------- */
  final RxBool _isLoading = true.obs;

  final RxList<String> _recentChatTitles = RxList([
    "Received an invoice from ABC Company for consulting services.Total Amount: 500",
    "Purchased a computer from MacHub for creative work.Item: MacBook Pro 16-inch and Total Amount: Rs.2,499 ",
    "Received an invoice from XYZ Supply Co. for office supplies.Office Desk Chairs,Quantity: 5, tOTAL Rs.600",
    "Purchased software license from SoftTech Solutions for project management.Total Amount: Rs.600",
  ]);

  // final RxList<CurrencyDTO> _currencies = RxList(
  //   [
  //     CurrencyDTO(
  //       id: 1,
  //       img: 'assets/usa.png',
  //       code: 'USA',
  //       value: 305.2,
  //     ),
  //     CurrencyDTO(
  //       id: 1,
  //       img: 'assets/usa.png',
  //       code: 'SRI',
  //       value: 305.2,
  //     ),
  //     CurrencyDTO(
  //       id: 1,
  //       img: 'assets/usa.png',
  //       code: 'EUR',
  //       value: 305.2,
  //     ),
  //     CurrencyDTO(
  //       id: 1,
  //       img: 'assets/usa.png',
  //       code: 'JAP',
  //       value: 305.2,
  //     ),
  //     CurrencyDTO(
  //       id: 1,
  //       img: 'assets/usa.png',
  //       code: 'IND',
  //       value: 305.2,
  //     ),
  //     CurrencyDTO(
  //       id: 1,
  //       img: 'assets/usa.png',
  //       code: 'AUS',
  //       value: 305.2,
  //     ),
  //     CurrencyDTO(
  //       id: 1,
  //       img: 'assets/usa.png',
  //       code: 'SIG',
  //       value: 305.2,
  //     ),
  //   ],
  // );
  final RxList<CurrencyDTO> currencies = <CurrencyDTO>[].obs;

/* --------------------------------- public --------------------------------- */
  /// Data loading status
  bool get isLoading => _isLoading.value;

  List<String> get recentChatTitles => _recentChatTitles;

  // List<CurrencyDTO> get currencies => _currencies;

/* -------------------------------- overrides ------------------------------- */
  @override
  void onReady() {
    super.onReady();
    fetchCurrencies(); // Fetch currencies when the controller is ready
  }

/* --------------------------------- methods -------------------------------- */

  void fetchCurrencies() async {
    final result = await getCurrenciesUseCase.call();
    result.fold(
      (failure) {
        // Handle failure (e.g., show an error message)
        print('Error: $failure');
      },
      (currencies) {
        // Update the state with the retrieved currencies
        this.currencies.value = currencies;
      },
    );
  }

  Future<void> saveCurrency(CurrencyDTO currency) async {
    _isLoading.value = true; // Show loading indicator
    final repository = CurrencyRepository(
        remoteDataSource: CurrencyRemoteDataSource(),
        localDataSource: CurrencyLocalDataSource());
    final saveCurrencyUseCase = SaveCurrency(repository);

    final result = await saveCurrencyUseCase.call();

    result.fold((failure) {
      // Handle failure
      print("Error: $failure");
      // Optionally, show error to the user
    }, (currencies) {
      // Handle success
      this.currencies.value = currencies;
      print("Currency saved successfully");
    });

    _isLoading.value = false; // Hide loading indicator
  }

  Future<void> deleteCurrency(double currencyId) async {
    _isLoading.value = true; // Show loading indicator
    final repository = CurrencyRepository(
        remoteDataSource: CurrencyRemoteDataSource(),
        localDataSource: CurrencyLocalDataSource());
    final deleteCurrencyUseCase = DeleteCurrency(repository);

    final result = await deleteCurrencyUseCase.call(currencyId);

    result.fold((failure) {
      // Handle failure
      print("Error: $failure");
      // Optionally, show error to the user
    }, (success) {
      // Handle success
      print("Currency deleted successfully");
      // Optionally, update the local state or UI
      fetchCurrencies(); // Refresh the list of currencies
    });

    _isLoading.value = false; // Hide loading indicator
  }

  Future<void> getSavedCurrencies() async {
    _isLoading.value = true; // Show loading indicator
    final repository = CurrencyRepository(
        remoteDataSource: CurrencyRemoteDataSource(),
        localDataSource: CurrencyLocalDataSource());
    final getSavedCurrenciesUseCase = GetSavedCurrencies(repository);

    final result = await getSavedCurrenciesUseCase.call();

    result.fold((failure) {
      // Handle failure
      print("Error: $failure");
      // Optionally, show error to the user
    }, (currencies) {
      // Handle success
      this.currencies.value = currencies;
      print("Saved currencies fetched successfully");
    });

    _isLoading.value = false; // Hide loading indicator
  }

  Future<void> getExchangeAmount() async {
    _isLoading.value = true; // Show loading indicator
    final repository = CurrencyRepository(
        remoteDataSource: CurrencyRemoteDataSource(),
        localDataSource: CurrencyLocalDataSource());
    final getExchangeAmountUseCase = GetExchangeAmount(repository);

    final result = await getExchangeAmountUseCase.call();

    result.fold((failure) {
      // Handle failure
      print("Error: $failure");
      // Optionally, show error to the user
    }, (currencies) {
      // Handle success
      this.currencies.value = currencies;
      print("Exchange amounts fetched successfully");
    });

    _isLoading.value = false; // Hide loading indicator
  }
}
