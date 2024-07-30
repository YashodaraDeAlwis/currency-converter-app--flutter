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
/* --------------------------------- public --------------------------------- */
  /// data loading status
  bool get isLoading => _isLoading.value;

  List<String> get recentChatTitles => _recentChatTitles;
/* -------------------------------- overrides ------------------------------- */
  @override
  void onReady() {
    ();
    super.onReady();
  }

/* --------------------------------- methods -------------------------------- */
}
