// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get userRole => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  Option<bool> get isAppStarted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      String userRole,
      String userId,
      bool isLoggedIn,
      Option<bool> isAppStarted});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? userRole = null,
    Object? userId = null,
    Object? isLoggedIn = null,
    Object? isAppStarted = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppStarted: null == isAppStarted
          ? _value.isAppStarted
          : isAppStarted // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      String userRole,
      String userId,
      bool isLoggedIn,
      Option<bool> isAppStarted});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? userRole = null,
    Object? userId = null,
    Object? isLoggedIn = null,
    Object? isAppStarted = null,
  }) {
    return _then(_$AppStateImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppStarted: null == isAppStarted
          ? _value.isAppStarted
          : isAppStarted // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  _$AppStateImpl(
      {required this.accessToken,
      required this.refreshToken,
      required this.userRole,
      required this.userId,
      required this.isLoggedIn,
      required this.isAppStarted});

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final String userRole;
  @override
  final String userId;
  @override
  final bool isLoggedIn;
  @override
  final Option<bool> isAppStarted;

  @override
  String toString() {
    return 'AppState(accessToken: $accessToken, refreshToken: $refreshToken, userRole: $userRole, userId: $userId, isLoggedIn: $isLoggedIn, isAppStarted: $isAppStarted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.isAppStarted, isAppStarted) ||
                other.isAppStarted == isAppStarted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken,
      userRole, userId, isLoggedIn, isAppStarted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  factory _AppState(
      {required final String accessToken,
      required final String refreshToken,
      required final String userRole,
      required final String userId,
      required final bool isLoggedIn,
      required final Option<bool> isAppStarted}) = _$AppStateImpl;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  String get userRole;
  @override
  String get userId;
  @override
  bool get isLoggedIn;
  @override
  Option<bool> get isAppStarted;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
