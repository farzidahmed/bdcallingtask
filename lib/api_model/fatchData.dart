// To parse this JSON data, do
//
//     final facthData = facthDataFromJson(jsonString);

import 'dart:convert';

List<FacthData> facthDataFromJson(String str) => List<FacthData>.from(json.decode(str).map((x) => FacthData.fromJson(x)));

String facthDataToJson(List<FacthData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FacthData {
  int userId;
  int id;
  String title;
  String body;

  FacthData({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory FacthData.fromJson(Map<String, dynamic> json) => FacthData(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
