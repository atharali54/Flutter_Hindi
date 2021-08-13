// To parse this JSON data, do
//
//     final models = modelsFromJson(jsonString);

import 'dart:convert';

List<Models> modelsFromJson(String str) =>
    List<Models>.from(json.decode(str).map((x) => Models.fromJson(x)));

String modelsToJson(List<Models> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Models {
  Models({
    this.userId,
    this.id,
    this.title,
  });

  int userId;
  int id;
  String title;

  factory Models.fromJson(Map<String, dynamic> json) => Models(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
      };
}
