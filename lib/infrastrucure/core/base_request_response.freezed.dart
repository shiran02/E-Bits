// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_request_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) {
  return _BaseResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponse {
  bool get success => throw _privateConstructorUsedError;
  List<dynamic>? get data => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResponseCopyWith<BaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseCopyWith<$Res> {
  factory $BaseResponseCopyWith(
          BaseResponse value, $Res Function(BaseResponse) then) =
      _$BaseResponseCopyWithImpl<$Res, BaseResponse>;
  @useResult
  $Res call(
      {bool success,
      List<dynamic>? data,
      String? info,
      String? error,
      int code});
}

/// @nodoc
class _$BaseResponseCopyWithImpl<$Res, $Val extends BaseResponse>
    implements $BaseResponseCopyWith<$Res> {
  _$BaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? info = freezed,
    Object? error = freezed,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseImplCopyWith<$Res>
    implements $BaseResponseCopyWith<$Res> {
  factory _$$BaseResponseImplCopyWith(
          _$BaseResponseImpl value, $Res Function(_$BaseResponseImpl) then) =
      __$$BaseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      List<dynamic>? data,
      String? info,
      String? error,
      int code});
}

/// @nodoc
class __$$BaseResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseCopyWithImpl<$Res, _$BaseResponseImpl>
    implements _$$BaseResponseImplCopyWith<$Res> {
  __$$BaseResponseImplCopyWithImpl(
      _$BaseResponseImpl _value, $Res Function(_$BaseResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? info = freezed,
    Object? error = freezed,
    Object? code = null,
  }) {
    return _then(_$BaseResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseImpl implements _BaseResponse {
  _$BaseResponseImpl(
      {this.success = false,
      final List<dynamic>? data,
      this.info,
      this.error,
      this.code = 200})
      : _data = data;

  factory _$BaseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  final List<dynamic>? _data;
  @override
  List<dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? info;
  @override
  final String? error;
  @override
  @JsonKey()
  final int code;

  @override
  String toString() {
    return 'BaseResponse(success: $success, data: $data, info: $info, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success,
      const DeepCollectionEquality().hash(_data), info, error, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseImplCopyWith<_$BaseResponseImpl> get copyWith =>
      __$$BaseResponseImplCopyWithImpl<_$BaseResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponse implements BaseResponse {
  factory _BaseResponse(
      {final bool success,
      final List<dynamic>? data,
      final String? info,
      final String? error,
      final int code}) = _$BaseResponseImpl;

  factory _BaseResponse.fromJson(Map<String, dynamic> json) =
      _$BaseResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<dynamic>? get data;
  @override
  String? get info;
  @override
  String? get error;
  @override
  int get code;
  @override
  @JsonKey(ignore: true)
  _$$BaseResponseImplCopyWith<_$BaseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
