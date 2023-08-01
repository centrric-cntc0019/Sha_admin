import 'package:freezed_annotation/freezed_annotation.dart';

import '../failure/main_failure.dart';

part 'apiresponse.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse {
  factory ApiResponse({
    T? data,
    int? statusCode,
    String? message,
    MainFailure? error,
    @Default(1) int pageNo,
    @Default(false) bool loading,
    @Default(true) bool pagination,
    @Default(false) bool searchLoading,
    @Default(false) bool paginationLoading,
  }) = _ApiResponse;
}
