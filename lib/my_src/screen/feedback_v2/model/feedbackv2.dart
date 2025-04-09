// To parse this JSON data, do
//
//     final feedbackV2 = feedbackV2FromJson(jsonString);

import 'dart:convert';
FeedbackV2 feedbackV2FromJson(String str) => FeedbackV2.fromJson(json.decode(str));

class FeedbackV2 {
    bool status;
    String message;
    int totalResult;
    List<FeedbackDataV2> data;

    FeedbackV2({
        required this.status,
        required this.message,
        required this.totalResult,
        required this.data,
    });

    factory FeedbackV2.fromJson(Map<String, dynamic> json) => FeedbackV2(
        status: json["status"] ?? false,
        message: json["message"] ?? '',
        totalResult: json["totalResult"] ?? 0,
        data: json["data"] != null 
            ? List<FeedbackDataV2>.from(json["data"].map((x) => FeedbackDataV2.fromJson(x))) 
            : [],
    );
}

class FeedbackDataV2 {
    DateTime updateAt;
    String id;
    String statusName;
    int customerNumber;
    String customerName;
    String customerCode;
    String customerNatinality;
    String note;
    bool hasNote;
    List<String> serviceGood;
    List<String> serviceBad;
    String staffNameEn;
    String staffName;
    String staffCode;
    String staffRole;
    String tag;
    DateTime createdAt;
    int v;

    FeedbackDataV2({
        required this.updateAt,
        required this.id,
        required this.statusName,
        required this.customerNumber,
        required this.customerName,
        required this.customerCode,
        required this.customerNatinality,
        required this.note,
        required this.hasNote,
        required this.serviceGood,
        required this.serviceBad,
        required this.staffNameEn,
        required this.staffName,
        required this.staffCode,
        required this.staffRole,
        required this.tag,
        required this.createdAt,
        required this.v,
    });

    factory FeedbackDataV2.fromJson(Map<String, dynamic> json) => FeedbackDataV2(
        updateAt: json["updateAt"] != null ? DateTime.parse(json["updateAt"]) : DateTime.now(),
        id: json["_id"] ?? 'unknown',
        statusName: json["statusName"] ?? 'unknown',
        customerNumber: json["customerNumber"] ?? 0,
        customerName: json["customerName"] ?? 'unknown',
        customerCode: json["customerCode"] ?? '',
        customerNatinality: json["customerNatinality"] ?? 'unknown',
        note: json["note"] ?? '',
        hasNote: json["hasNote"] ?? false,
        serviceGood: json["service_good"] != null 
            ? List<String>.from(json["service_good"].map((x) => x)) 
            : [],
        serviceBad: json["service_bad"] != null 
            ? List<String>.from(json["service_bad"].map((x) => x)) 
            : [],
        staffNameEn: json["staffNameEn"] ?? 'unknown',
        staffName: json["staffName"] ?? 'unknown',
        staffCode: json["staffCode"] ?? 'unknown',
        staffRole: json["staffRole"] ?? 'unknown',
        tag: json["tag"] ?? 'unknown',
        createdAt: json["createdAt"] != null ? DateTime.parse(json["createdAt"]) : DateTime.now(),
        v: json["__v"] ?? 0,
    );
}