import 'dart:convert';

List<Model01> model01FromJson(String str) =>
    List<Model01>.from(json.decode(str).map((x) => Model01.fromJson(x)));

String model01ToJson(List<Model01> listData) =>
    json.encode(List<dynamic>.from(listData.map((x) => x.toJson())));

class Model01 {
  Model01({
    this.userId,
    this.id,
    this.title,
  });

  int userId;
  int id;
  String title;

  factory Model01.fromJson(Map<String, dynamic> json) => Model01(
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
