// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyDTOImpl _$$CurrencyDTOImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyDTOImpl(
      id: (json['id'] as num).toInt(),
      img: json['img'] as String,
      code: json['code'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$CurrencyDTOImplToJson(_$CurrencyDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'code': instance.code,
      'value': instance.value,
    };
