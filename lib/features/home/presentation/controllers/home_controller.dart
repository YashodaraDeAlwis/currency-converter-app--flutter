import 'package:currecny_converter_app/core/entities/currency_dto.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
/* --------------------------------- private -------------------------------- */

/* ------------------------------- rx private ------------------------------- */
  final RxBool _isLoading = true.obs;

  final RxList<String> _recentChatTitles = RxList([
    "Received an invoice from ABC Company for consulting services.Total Amount: 500",
    "Purchased a computer from MacHub for creative work.Item: MacBook Pro 16-inch and Total Amount: Rs.2,499 ",
    "Received an invoice from XYZ Supply Co. for office supplies.Office Desk Chairs,Quantity: 5, tOTAL Rs.600",
    "Purchased software license from SoftTech Solutions for project management.Total Amount: Rs.600",
  ]);

  final RxList<CurrencyDTO> _currencies = RxList(
    [
      CurrencyDTO(
        id: 1,
        img: 'assets/usa.png',
        code: 'USA',
        value: 305.2,
      ),
      CurrencyDTO(
        id: 1,
        img: 'assets/usa.png',
        code: 'SRI',
        value: 305.2,
      ),
      CurrencyDTO(
        id: 1,
        img: 'assets/usa.png',
        code: 'EUR',
        value: 305.2,
      ),
      CurrencyDTO(
        id: 1,
        img: 'assets/usa.png',
        code: 'JAP',
        value: 305.2,
      ),
      CurrencyDTO(
        id: 1,
        img: 'assets/usa.png',
        code: 'IND',
        value: 305.2,
      ),
      CurrencyDTO(
        id: 1,
        img: 'assets/usa.png',
        code: 'AUS',
        value: 305.2,
      ),
      CurrencyDTO(
        id: 1,
        img: 'assets/usa.png',
        code: 'SIG',
        value: 305.2,
      ),
    ],
  );
/* --------------------------------- public --------------------------------- */
  /// data loading status
  bool get isLoading => _isLoading.value;

  List<String> get recentChatTitles => _recentChatTitles;

  List<CurrencyDTO> get currencies => _currencies;
/* -------------------------------- overrides ------------------------------- */
  @override
  void onReady() {
    ();
    super.onReady();
  }

/* --------------------------------- methods -------------------------------- */
}
