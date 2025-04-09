import 'dart:convert';

TripModel tripModelFromJson(String str) => TripModel.fromJson(json.decode(str));
class TripModel {
    final String message;
    final TripModelData data;

    TripModel({
        required this.message,
        required this.data,
    });

    factory TripModel.fromJson(Map<String, dynamic> json) => TripModel(
        message: json["message"],
        data: TripModelData.fromJson(json["data"]),
    );
   
}

class TripModelData {
    final String id;
    final String feedbackId;
    final String driver;
    final String customerName;
    final String customerNumber;
    final String from;
    final String to;
    final DateTime createdAt;
    final int v;

    TripModelData({
        required this.id,
        required this.feedbackId,
        required this.driver,
        required this.customerName,
        required this.customerNumber,
        required this.from,
        required this.to,
        required this.createdAt,
        required this.v,
    });

    factory TripModelData.fromJson(Map<String, dynamic> json) => TripModelData(
        id: json["_id"]??"",
        feedbackId: json["feedback_id"]??"",
        driver: json["driver"]??"",
        customerName: json["customer_name"]??"",
        customerNumber: json["customer_number"]??"",
        from: json["from"]??"",
        to: json["to"]??"",
        createdAt: DateTime.parse(json["createdAt"])??DateTime(2000,01,01),
        v: json["__v"]??"",
    );
}
