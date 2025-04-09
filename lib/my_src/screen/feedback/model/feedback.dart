import 'package:equatable/equatable.dart';


class FeedbackModel  extends Equatable{
    final bool status;
    final String message;
    final int totalResult;
    final List<FeedbackData> data;

    const FeedbackModel({
        required this.status,
        required this.message,
        required this.totalResult,
        required this.data,
    });

    factory FeedbackModel.fromJson(Map<String, dynamic> json) => FeedbackModel(
        status: json["status"],
        message: json["message"],
        totalResult: json["totalResult"],
        data: List<FeedbackData>.from(json["data"].map((x) => FeedbackData.fromJson(x))),
    );
    
      @override
      List<Object?> get props => [status, message, totalResult,data,];

    
}

class FeedbackData  extends Equatable{
    final String id;
    final int datumId;
    final String content;
    final List<String> experience;
    final String image;
    final String tag;
    final String createdAt;
    final int v;

    const FeedbackData({
        required this.id,
        required this.datumId,
        required this.content,
        required this.experience,
        required this.image,
        required this.tag,
        required this.createdAt,
        required this.v,
    });

    factory FeedbackData.fromJson(Map<String, dynamic> json) => FeedbackData(
        id: json["_id"],
        datumId: json["id"],
        content: json["content"],
        experience: List<String>.from(json["experience"].map((x) => x)),
        image: json["image"],
        tag:json["tag"],
        createdAt: json["createdAt"],
        v: json["__v"]?? 0,
    );
    
      @override
      List<Object?> get props =>[id, datumId, content,experience,image,tag,createdAt,v];
}

   


