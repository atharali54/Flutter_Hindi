// To parse this JSON data, do
//
//     final localModel05 = localModel05FromJson(jsonString);

import 'dart:convert';

List<LocalModel05> localModel05FromJson(String str) => List<LocalModel05>.from(
    json.decode(str).map((x) => LocalModel05.fromJson(x)));

String localModel05ToJson(List<LocalModel05> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LocalModel05 {
  LocalModel05({
    this.id,
    this.className,
    this.level,
  });

  int id;
  String className;
  int level;

  factory LocalModel05.fromJson(Map<String, dynamic> json) => LocalModel05(
        id: json["id"],
        className: json["class_name"],
        level: json["level"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "class_name": className,
        "level": level,
      };
}
