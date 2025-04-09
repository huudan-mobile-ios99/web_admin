import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    final bool status;
    final String message;
    final int totalResult;
    final List<User> data;

    UserModel({
        required this.status,
        required this.message,
        required this.totalResult,
        required this.data,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        status: json["status"],
        message: json["message"],
        totalResult: json["totalResult"],
        data: List<User>.from(json["data"].map((x) => User.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "totalResult": totalResult,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class User {
    final String imageUrl;
    final String id;
    final String usernameEn;
    final String username;
    final String password;
    final DateTime createdAt;
    final bool? isActive;
    final int? v;

    User({
        required this.imageUrl,
        required this.id,
        required this.usernameEn,
        required this.username,
        required this.password,
        required this.createdAt,
        this.v,
        required this.isActive,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        imageUrl: json["image_url"],
        id: json["_id"],
        usernameEn: json["username_en"],
        username: json["username"],
        password: json["password"],
        createdAt: DateTime.parse(json["createdAt"]),
        v: json["__v"],
        isActive :json['isActive']
    );

    Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "_id": id,
        "username_en": usernameEn,
        "username": username,
        "password": password,
        "createdAt": createdAt.toIso8601String(),
        "__v": v,
        'isActive':isActive
    };
}
