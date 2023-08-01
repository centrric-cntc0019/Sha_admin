import 'package:freezed_annotation/freezed_annotation.dart';

part 'apiresponse.freezed.dart';

enum ErrorType { noNetWork, timeOut, serverError }

@freezed
class ApiResponse<T> with _$ApiResponse {
  factory ApiResponse({
    T? data,
    int? statusCode,
    String? message,
    ErrorType? error,
    @Default(1) int pageNo,
    @Default(false) bool loading,
    @Default(true) bool pagination,
    @Default(false) bool searchLoading,
    @Default(false) bool paginationLoading,
  }) = _ApiResponse;
}
