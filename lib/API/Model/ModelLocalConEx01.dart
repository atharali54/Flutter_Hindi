// To parse this JSON data, do
//
//     final models = modelsFromJson(jsonString);

import 'dart:convert';

Models modelsFromJson(String str) => Models.fromJson(json.decode(str));

String modelsToJson(Models data) => json.encode(data.toJson());

class Models {
  Models({
    this.id,
    this.name,
    this.gender,
  });

  int id;
  String name;
  String gender;

  factory Models.fromJson(Map<String, dynamic> json) => Models(
        id: json["id"],
        name: json["name"],
        gender: json["gender"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "gender": gender,
      };
}
