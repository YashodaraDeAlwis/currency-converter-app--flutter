// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrencyDTO _$CurrencyDTOFromJson(Map<String, dynamic> json) {
  return _CurrencyDTO.fromJson(json);
}

/// @nodoc
mixin _$CurrencyDTO {
  int get id => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyDTOCopyWith<CurrencyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyDTOCopyWith<$Res> {
  factory $CurrencyDTOCopyWith(
          CurrencyDTO value, $Res Function(CurrencyDTO) then) =
      _$CurrencyDTOCopyWithImpl<$Res, CurrencyDTO>;
  @useResult
  $Res call({int id, String img, String code, double value});
}

/// @nodoc
class _$CurrencyDTOCopyWithImpl<$Res, $Val extends CurrencyDTO>
    implements $CurrencyDTOCopyWith<$Res> {
  _$CurrencyDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? img = null,
    Object? code = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyDTOImplCopyWith<$Res>
    implements $CurrencyDTOCopyWith<$Res> {
  factory _$$CurrencyDTOImplCopyWith(
          _$CurrencyDTOImpl value, $Res Function(_$CurrencyDTOImpl) then) =
      __$$CurrencyDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String img, String code, double value});
}

/// @nodoc
class __$$CurrencyDTOImplCopyWithImpl<$Res>
    extends _$CurrencyDTOCopyWithImpl<$Res, _$CurrencyDTOImpl>
    implements _$$CurrencyDTOImplCopyWith<$Res> {
  __$$CurrencyDTOImplCopyWithImpl(
      _$CurrencyDTOImpl _value, $Res Function(_$CurrencyDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? img = null,
    Object? code = null,
    Object? value = null,
  }) {
    return _then(_$CurrencyDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyDTOImpl extends _CurrencyDTO {
  _$CurrencyDTOImpl(
      {required this.id,
      required this.img,
      required this.code,
      required this.value})
      : super._();

  factory _$CurrencyDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String img;
  @override
  final String code;
  @override
  final double value;

  @override
  String toString() {
    return 'CurrencyDTO(id: $id, img: $img, code: $code, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, img, code, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyDTOImplCopyWith<_$CurrencyDTOImpl> get copyWith =>
      __$$CurrencyDTOImplCopyWithImpl<_$CurrencyDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyDTOImplToJson(
      this,
    );
  }
}

abstract class _CurrencyDTO extends CurrencyDTO {
  factory _CurrencyDTO(
      {required final int id,
      required final String img,
      required final String code,
      required final double value}) = _$CurrencyDTOImpl;
  _CurrencyDTO._() : super._();

  factory _CurrencyDTO.fromJson(Map<String, dynamic> json) =
      _$CurrencyDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get img;
  @override
  String get code;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyDTOImplCopyWith<_$CurrencyDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
