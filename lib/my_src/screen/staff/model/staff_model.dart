class StaffModel {
  bool status;
  String message;
  int totalResult;
  List<StaffModelData> data;

  StaffModel({
    required this.status,
    required this.message,
    required this.totalResult,
    required this.data,
  });

  factory StaffModel.fromJson(Map<String, dynamic> json) => StaffModel(
        status: json["status"] ?? false,
        message: json["message"] ?? '',
        totalResult: json["totalResult"] ?? 0,
        data: (json["data"] as List<dynamic>?)
                ?.map((item) => StaffModelData.fromJson(item))
                .toList() ??
            [],
      );
}

class StaffModelData {
  String id;
  String code;
  String usernameEn;
  String username;
  String imageUrl;
  String role;
  DateTime createdAt;
  bool isActive;
  int v;

  StaffModelData({
    required this.id,
    required this.code,
    required this.usernameEn,
    required this.username,
    required this.imageUrl,
    required this.role,
    required this.createdAt,
    required this.isActive,
    required this.v,
  });

  factory StaffModelData.fromJson(Map<String, dynamic> json) => StaffModelData(
        id: json["_id"] ?? "empty",
        code: json["code"] ?? "empty",
        usernameEn: json["username_en"] ?? "empty",
        username: json["username"] ?? "empty",
        imageUrl: json["image_url"] ?? "empty",
        role: json["role"] ?? "empty",
        createdAt: json["createdAt"] != null
            ? DateTime.parse(json["createdAt"])
            : DateTime.now(),
        isActive: json["isActive"] ?? false,
        v: json["__v"] ?? 0,
      );
}