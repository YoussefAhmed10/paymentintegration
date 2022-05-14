// To parse this JSON data, do
//
//     final requstToken = requstTokenFromJson(jsonString);

import 'dart:convert';

RequstToken requstTokenFromJson(String str) =>
    RequstToken.fromJson(json.decode(str));

String requstTokenToJson(RequstToken data) => json.encode(data.toJson());

class RequstToken {
  RequstToken({
    required this.token,
  });

  String token;

  factory RequstToken.fromJson(Map<String, dynamic> json) => RequstToken(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
