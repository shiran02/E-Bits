import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_request_response.freezed.dart';
part 'base_request_response.g.dart';

@freezed
class BaseResponse with _$BaseResponse {
  factory BaseResponse({
    @Default(false) bool success,
    List<dynamic>? data,
    String? info,
    String? error,
    @Default(200) int code,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  factory BaseResponse.fromErrorResponse(Map<String, dynamic> json) =>
      BaseResponse(
        success: false,
        info: json['logError']?.toString(),
        code: json['statusCode'] ??
            500, // Default to a server error code if not provided
        error: json['name'] != null && json['name'] == "Bad request"
            ? json['logError']?.toString()
            : json['name'] ?? "Unexpected Error",
      );
}
