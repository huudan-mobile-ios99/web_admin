import 'package:equatable/equatable.dart';

class FeedbackCarData extends Equatable {
  final String id;
  final String trip; // Added trip field
  final String datumId;
  final String driver;
  final int star;
  final String content;
  final List<String> experience;
  final String status;
  final String createdAt;
  final int v;

  const FeedbackCarData({
    required this.id,
    required this.trip, // Added trip field
    required this.datumId,
    required this.star,
    required this.driver,
    required this.content,
    required this.experience,
    required this.status,
    required this.createdAt,
    required this.v,
  });

  factory FeedbackCarData.fromJson(Map<String, dynamic> json) => FeedbackCarData(
        id: json["_id"] ?? "",
        trip: json["trip"] as String? ?? "",
        datumId: json["id"] ?? "",
        driver: json["driver"] ?? "",
        star: json["star"] ?? 0,
        content: json["content"] ?? "",
        experience: (json["experience"] != null) ? List<String>.from(json["experience"].map((x) => x)) : [],
        status: json["status"] ?? "",
        createdAt: json["createdAt"] ?? "",
        v: json["__v"] ?? 0,
      );

  @override
  List<Object?> get props => [
        id,
        trip, // Including trip in props list
        datumId,
        driver,
        star,
        content,
        experience,
        status,
        createdAt,
        v,
      ];
}