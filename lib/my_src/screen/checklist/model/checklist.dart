// import 'package:equatable/equatable.dart';

// final class Checklist extends Equatable {
//   const Checklist({
//     required this.id,
//     required this.title,
//     required this.body,
//     required this.username,
//     required this.usernameEn,
//     required this.is_finish,
//     this.createAt,
//     this.updateAt,
//   });

//   final String id;
//   final String title;
//   final String body;
//   final String username;
//   final String usernameEn;
//   final bool is_finish;
//   final DateTime? createAt;
//   final DateTime? updateAt;

import 'dart:convert';

//   @override
//   List<Object> get props => [id, title, body,username,usernameEn,
//   is_finish,createAt!,updateAt!
//   ];
// }


import 'package:equatable/equatable.dart';

ChecklistModel checklistModelFromJson(String str) => ChecklistModel.fromJson(json.decode(str));

String checklistModelToJson(ChecklistModel data) => json.encode(data.toJson());

class ChecklistModel extends Equatable {
    final bool status;
    final String message;
    final int totalResult;
    final List<CheckList>? data;

    const ChecklistModel({
        required this.status,
        required this.message,
        required this.totalResult,
        required this.data,
    });

    factory ChecklistModel.fromJson(Map<String, dynamic> json) => ChecklistModel(
        status: json["status"],
        message: json["message"],
        totalResult: json["totalResult"],
        data: List<CheckList>.from(json["data"].map((x) => CheckList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "totalResult": totalResult,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
    
      @override
      List<Object?> get props => [status, message, totalResult,data,];
}

class CheckList extends Equatable{
    final String id;
    final String title;
    final String body;
    final String username;
    final String usernameEn;
    final bool isFinish;
    final String createdAt;
    final DateTime updateAt;
    final int? v;

    const CheckList({
        required this.id,
        required this.title,
        required this.body,
        required this.username,
        required this.usernameEn,
        required this.isFinish,
        required this.createdAt,
        required this.updateAt,
         this.v,
    });

    factory CheckList.fromJson(Map<String, dynamic> json) => CheckList(
        id: json["_id"],
        title: json["title"],
        body: json["body"],
        username: json["username"],
        usernameEn: json["username_en"],
        isFinish: json["is_finish"],
        createdAt: (json["createdAt"]),
        updateAt: DateTime.parse(json["updateAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "body": body,
        "username": username,
        "username_en": usernameEn,
        "is_finish": isFinish,
        "createdAt": createdAt,
        "updateAt": updateAt,
        "__v": v,
    };
    
      @override
      List<Object?> get props => [id, title, body,username,usernameEn,isFinish,createdAt,updateAt];
}
