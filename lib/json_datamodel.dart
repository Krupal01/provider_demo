import 'dart:convert';

List<JsonModel> jsonModelFromJson(String str) => List<JsonModel>.from(json.decode(str).map((x) => JsonModel.fromJson(x)));

String jsonModelToJson(List<JsonModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class JsonModel {
    JsonModel({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

    int userId;
    int id;
    String title;
    String body;

    factory JsonModel.fromJson(Map<String, dynamic> json) => JsonModel(
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
