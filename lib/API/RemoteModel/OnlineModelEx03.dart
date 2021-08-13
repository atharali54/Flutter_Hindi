// To parse this JSON data, do
//
//     final models03 = models03FromJson(jsonString);

import 'dart:convert';

Models03 models03FromJson(String str) => Models03.fromJson(json.decode(str));

String models03ToJson(Models03 data) => json.encode(data.toJson());

class Models03 {
  Models03({
    this.status,
    this.error,
  });

  int status;
  String error;

  factory Models03.fromJson(Map<String, dynamic> json) => Models03(
        status: json["status"],
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "error": error,
      };
}
