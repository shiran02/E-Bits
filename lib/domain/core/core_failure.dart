import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_failure.freezed.dart';

@freezed
class CoreFailure with _$CoreFailure {
  const factory CoreFailure.ignoreWarning() = _IgnoreWarning;

  const factory CoreFailure.serverError(String message) = _ServerErrorFailure;

  const factory CoreFailure.somethingWentWrong(Object e) = _SomethingWentWrong;

  const factory CoreFailure.unexpected() = _UnexpectedFailure;

  const factory CoreFailure.userAlreadyExitsError(String message) =
      _UserAlreadyExits;

  const factory CoreFailure.paymentError(String message, String details) =
      _PaymentError;
}
