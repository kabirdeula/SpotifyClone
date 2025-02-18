import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@HiveType(typeId: 0)
@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    String? success,
    String? error,
    @HiveField(0) String? uid,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
