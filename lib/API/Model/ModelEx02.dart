// To parse this JSON data, do
//
//     final myApi02 = myApi02FromJson(jsonString);

import 'dart:convert';

MyApi02 myApi02FromJson(String str) => MyApi02.fromJson(json.decode(str));

String myApi02ToJson(MyApi02 data) => json.encode(data.toJson());

class MyApi02 {
  MyApi02({
    this.id,
    this.category,
    this.facts,
  });

  int id;
  String category;
  List<Fact> facts;

  factory MyApi02.fromJson(Map<String, dynamic> json) => MyApi02(
        id: json["id"],
        category: json["category"],
        facts: List<Fact>.from(json["facts"].map((x) => Fact.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category": category,
        "facts": List<dynamic>.from(facts.map((x) => x.toJson())),
      };
}

class Fact {
  Fact({
    this.id,
    this.title,
    this.description,
    this.imageUrl,
  });

  int id;
  String title;
  String description;
  String imageUrl;

  factory Fact.fromJson(Map<String, dynamic> json) => Fact(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        imageUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "image_url": imageUrl,
      };
}
