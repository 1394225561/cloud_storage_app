import 'package:json_annotation/json_annotation.dart';
part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {
  int? code;
  String? errorCode;
  String? message;
  String? errorMessage;

  ApiResponse(
    this.code,
    this.errorCode,
    this.message,
    this.errorMessage,
  );

  // 方法fromJson中的参数 T Function(dynamic json) fromJsonT 是一个数据类型为dynamic,参数名为json的函数
  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}
