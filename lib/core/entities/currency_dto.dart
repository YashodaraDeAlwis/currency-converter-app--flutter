import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_dto.freezed.dart';
part 'currency_dto.g.dart';

@freezed
class CurrencyDTO with _$CurrencyDTO {
  CurrencyDTO._();

  factory CurrencyDTO({
    required int id,
    required String img,
    required String code,
    required double value,
  }) = _CurrencyDTO;

  factory CurrencyDTO.fromJson(Map<String, Object?> json) =>
      _$CurrencyDTOFromJson(json);

  void method() {
    throw "Not a valied currency";
  }
}
