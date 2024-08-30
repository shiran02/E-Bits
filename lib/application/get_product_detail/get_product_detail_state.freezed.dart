// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_product_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetProductDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Failure> get responseFailure => throw _privateConstructorUsedError;
  KtList<ProductDetailData> get productDetailDataList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetProductDetailStateCopyWith<GetProductDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductDetailStateCopyWith<$Res> {
  factory $GetProductDetailStateCopyWith(GetProductDetailState value,
          $Res Function(GetProductDetailState) then) =
      _$GetProductDetailStateCopyWithImpl<$Res, GetProductDetailState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Failure> responseFailure,
      KtList<ProductDetailData> productDetailDataList});
}

/// @nodoc
class _$GetProductDetailStateCopyWithImpl<$Res,
        $Val extends GetProductDetailState>
    implements $GetProductDetailStateCopyWith<$Res> {
  _$GetProductDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? responseFailure = null,
    Object? productDetailDataList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      responseFailure: null == responseFailure
          ? _value.responseFailure
          : responseFailure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      productDetailDataList: null == productDetailDataList
          ? _value.productDetailDataList
          : productDetailDataList // ignore: cast_nullable_to_non_nullable
              as KtList<ProductDetailData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProductDetailStateImplCopyWith<$Res>
    implements $GetProductDetailStateCopyWith<$Res> {
  factory _$$GetProductDetailStateImplCopyWith(
          _$GetProductDetailStateImpl value,
          $Res Function(_$GetProductDetailStateImpl) then) =
      __$$GetProductDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Failure> responseFailure,
      KtList<ProductDetailData> productDetailDataList});
}

/// @nodoc
class __$$GetProductDetailStateImplCopyWithImpl<$Res>
    extends _$GetProductDetailStateCopyWithImpl<$Res,
        _$GetProductDetailStateImpl>
    implements _$$GetProductDetailStateImplCopyWith<$Res> {
  __$$GetProductDetailStateImplCopyWithImpl(_$GetProductDetailStateImpl _value,
      $Res Function(_$GetProductDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? responseFailure = null,
    Object? productDetailDataList = null,
  }) {
    return _then(_$GetProductDetailStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      responseFailure: null == responseFailure
          ? _value.responseFailure
          : responseFailure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      productDetailDataList: null == productDetailDataList
          ? _value.productDetailDataList
          : productDetailDataList // ignore: cast_nullable_to_non_nullable
              as KtList<ProductDetailData>,
    ));
  }
}

/// @nodoc

class _$GetProductDetailStateImpl implements _GetProductDetailState {
  _$GetProductDetailStateImpl(
      {required this.isLoading,
      required this.responseFailure,
      required this.productDetailDataList});

  @override
  final bool isLoading;
  @override
  final Option<Failure> responseFailure;
  @override
  final KtList<ProductDetailData> productDetailDataList;

  @override
  String toString() {
    return 'GetProductDetailState(isLoading: $isLoading, responseFailure: $responseFailure, productDetailDataList: $productDetailDataList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductDetailStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.responseFailure, responseFailure) ||
                other.responseFailure == responseFailure) &&
            (identical(other.productDetailDataList, productDetailDataList) ||
                other.productDetailDataList == productDetailDataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, responseFailure, productDetailDataList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductDetailStateImplCopyWith<_$GetProductDetailStateImpl>
      get copyWith => __$$GetProductDetailStateImplCopyWithImpl<
          _$GetProductDetailStateImpl>(this, _$identity);
}

abstract class _GetProductDetailState implements GetProductDetailState {
  factory _GetProductDetailState(
          {required final bool isLoading,
          required final Option<Failure> responseFailure,
          required final KtList<ProductDetailData> productDetailDataList}) =
      _$GetProductDetailStateImpl;

  @override
  bool get isLoading;
  @override
  Option<Failure> get responseFailure;
  @override
  KtList<ProductDetailData> get productDetailDataList;
  @override
  @JsonKey(ignore: true)
  _$$GetProductDetailStateImplCopyWith<_$GetProductDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
