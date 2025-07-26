import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final String password;
  final String phonNumber;
  final String confirmPassword;

  SignUpRequestBody({
    required this.email,
    required this.name,
    required this.password,
    required this.phonNumber,
    required this.confirmPassword,
  });

  factory SignUpRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
// api شكل البيانات ال هتتبعت لل 