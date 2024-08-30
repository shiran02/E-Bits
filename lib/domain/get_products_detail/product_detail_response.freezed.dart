// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailResponse {
  KtList<ProductDetailData> get products => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailResponseCopyWith<ProductDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailResponseCopyWith<$Res> {
  factory $ProductDetailResponseCopyWith(ProductDetailResponse value,
          $Res Function(ProductDetailResponse) then) =
      _$ProductDetailResponseCopyWithImpl<$Res, ProductDetailResponse>;
  @useResult
  $Res call(
      {KtList<ProductDetailData> products, int total, int skip, int limit});
}

/// @nodoc
class _$ProductDetailResponseCopyWithImpl<$Res,
        $Val extends ProductDetailResponse>
    implements $ProductDetailResponseCopyWith<$Res> {
  _$ProductDetailResponseCopyWithImpl(this._value, this._then);

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
              as KtList<ProductDetailData>,
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
abstract class _$$ProductDetailResponseImplCopyWith<$Res>
    implements $ProductDetailResponseCopyWith<$Res> {
  factory _$$ProductDetailResponseImplCopyWith(
          _$ProductDetailResponseImpl value,
          $Res Function(_$ProductDetailResponseImpl) then) =
      __$$ProductDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {KtList<ProductDetailData> products, int total, int skip, int limit});
}

/// @nodoc
class __$$ProductDetailResponseImplCopyWithImpl<$Res>
    extends _$ProductDetailResponseCopyWithImpl<$Res,
        _$ProductDetailResponseImpl>
    implements _$$ProductDetailResponseImplCopyWith<$Res> {
  __$$ProductDetailResponseImplCopyWithImpl(_$ProductDetailResponseImpl _value,
      $Res Function(_$ProductDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_$ProductDetailResponseImpl(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as KtList<ProductDetailData>,
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

class _$ProductDetailResponseImpl implements _ProductDetailResponse {
  _$ProductDetailResponseImpl(
      {required this.products,
      required this.total,
      required this.skip,
      required this.limit});

  @override
  final KtList<ProductDetailData> products;
  @override
  final int total;
  @override
  final int skip;
  @override
  final int limit;

  @override
  String toString() {
    return 'ProductDetailResponse(products: $products, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailResponseImpl &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, products, total, skip, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailResponseImplCopyWith<_$ProductDetailResponseImpl>
      get copyWith => __$$ProductDetailResponseImplCopyWithImpl<
          _$ProductDetailResponseImpl>(this, _$identity);
}

abstract class _ProductDetailResponse implements ProductDetailResponse {
  factory _ProductDetailResponse(
      {required final KtList<ProductDetailData> products,
      required final int total,
      required final int skip,
      required final int limit}) = _$ProductDetailResponseImpl;

  @override
  KtList<ProductDetailData> get products;
  @override
  int get total;
  @override
  int get skip;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailResponseImplCopyWith<_$ProductDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
