// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailResponseDto _$ProductDetailResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailResponseDto {
  List<ProductDetailDataDto> get products => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailResponseDtoCopyWith<ProductDetailResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailResponseDtoCopyWith<$Res> {
  factory $ProductDetailResponseDtoCopyWith(ProductDetailResponseDto value,
          $Res Function(ProductDetailResponseDto) then) =
      _$ProductDetailResponseDtoCopyWithImpl<$Res, ProductDetailResponseDto>;
  @useResult
  $Res call(
      {List<ProductDetailDataDto> products, int total, int skip, int limit});
}

/// @nodoc
class _$ProductDetailResponseDtoCopyWithImpl<$Res,
        $Val extends ProductDetailResponseDto>
    implements $ProductDetailResponseDtoCopyWith<$Res> {
  _$ProductDetailResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailDataDto>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailResponseDtoImplCopyWith<$Res>
    implements $ProductDetailResponseDtoCopyWith<$Res> {
  factory _$$ProductDetailResponseDtoImplCopyWith(
          _$ProductDetailResponseDtoImpl value,
          $Res Function(_$ProductDetailResponseDtoImpl) then) =
      __$$ProductDetailResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductDetailDataDto> products, int total, int skip, int limit});
}

/// @nodoc
class __$$ProductDetailResponseDtoImplCopyWithImpl<$Res>
    extends _$ProductDetailResponseDtoCopyWithImpl<$Res,
        _$ProductDetailResponseDtoImpl>
    implements _$$ProductDetailResponseDtoImplCopyWith<$Res> {
  __$$ProductDetailResponseDtoImplCopyWithImpl(
      _$ProductDetailResponseDtoImpl _value,
      $Res Function(_$ProductDetailResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_$ProductDetailResponseDtoImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailDataDto>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailResponseDtoImpl extends _ProductDetailResponseDto {
  _$ProductDetailResponseDtoImpl(
      {required final List<ProductDetailDataDto> products,
      required this.total,
      required this.skip,
      required this.limit})
      : _products = products,
        super._();

  factory _$ProductDetailResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailResponseDtoImplFromJson(json);

  final List<ProductDetailDataDto> _products;
  @override
  List<ProductDetailDataDto> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int total;
  @override
  final int skip;
  @override
  final int limit;

  @override
  String toString() {
    return 'ProductDetailResponseDto(products: $products, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), total, skip, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailResponseDtoImplCopyWith<_$ProductDetailResponseDtoImpl>
      get copyWith => __$$ProductDetailResponseDtoImplCopyWithImpl<
          _$ProductDetailResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailResponseDto extends ProductDetailResponseDto {
  factory _ProductDetailResponseDto(
      {required final List<ProductDetailDataDto> products,
      required final int total,
      required final int skip,
      required final int limit}) = _$ProductDetailResponseDtoImpl;
  _ProductDetailResponseDto._() : super._();

  factory _ProductDetailResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProductDetailResponseDtoImpl.fromJson;

  @override
  List<ProductDetailDataDto> get products;
  @override
  int get total;
  @override
  int get skip;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailResponseDtoImplCopyWith<_$ProductDetailResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
