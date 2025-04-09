import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';

import '../screen/checklist/model/checklist.dart';
import '../screen/feedback car/model/feedbackcar.dart';
import '../screen/feedback_v2/model/feedbackv2.dart';
import '../screen/feedback%20car/model/tripmodel.dart';
import '../screen/feedback/model/feedback.dart';
import '../screen/staff/model/staff_model.dart';
import '../screen/user/model/user.dart';
import 'url_api.dart';

class ServiceAPIs {
  // receiveTimeout
  static const Duration receiveTimeout = Duration(minutes: 1);

  // connectTimeout
  static const Duration connectionTimeout = Duration(minutes: 1);

  final Dio dio = Dio();

  // fetch list checklist with limit
  Future<ChecklistModel> listUsers() async {
    final response = await dio.get(
      UrlAPIs.checklistList,
      options: Options(
        receiveTimeout: receiveTimeout,
        sendTimeout: connectionTimeout,
        contentType: Headers.jsonContentType,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      ),
    );
    debugPrint(response.data);
    return ChecklistModel.fromJson(response.data);
  }

  // fetch list checklist with limit
  Future<TripModel> findtripById(tripId) async {
    print('findtripById');
    final response = await dio.get(
      UrlAPIs.tripByID(tripId),
      options: Options(
        receiveTimeout: receiveTimeout,
        sendTimeout: connectionTimeout,
        contentType: Headers.jsonContentType,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      ),
    );
    print(response.data);
    return TripModel.fromJson(response.data);
  }

  Future exportDataExcel() async {
    final response = await dio.get(
      UrlAPIs.checklistExportExcel,
      options: Options(
        receiveTimeout: const Duration(seconds: 10000),
        sendTimeout: const Duration(seconds: 10000),
        contentType: Headers.jsonContentType,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      ),
    );
    debugPrint('${response.data}');
    return (response.data);
  }

  Future exportDataCarFeedbackExcel() async {
    final response = await dio.get(
      UrlAPIs.carfeedbackExportExcel,
      options: Options(
        receiveTimeout: const Duration(seconds: 10000),
        sendTimeout: const Duration(seconds: 10000),
        contentType: Headers.jsonContentType,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      ),
    );
    debugPrint('${response.data}');
    return (response.data);
  }

  Future exportDataFeedbackUserExcel() async {
    final response = await dio.get(
      UrlAPIs.feedbackuserExportExcel,
      options: Options(
        receiveTimeout: const Duration(seconds: 10000),
        sendTimeout: const Duration(seconds: 10000),
        contentType: Headers.jsonContentType,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      ),
    );
    debugPrint('${response.data}');
    return (response.data);
  }

  Future<List<CheckList>> fetchChecklist(
      [int startIndex = 0, postLimit]) async {
    const postLimit = 20;
    try {
      debugPrint('_fetchChecklist');
      final dio = Dio();
      final response = await dio.get(
        UrlAPIs
            .checklistListSimple, // Use http instead of https if it's not secured
        queryParameters: {'start': '$startIndex', 'limit': '$postLimit'},
      );
      if (response.statusCode == 200) {
        debugPrint('200 status');
        final body = response.data as List;
        return body.map((dynamic json) {
          final map = json as Map<String, dynamic>;
          // print(map);
          return CheckList(
            id: map['_id'] as String,
            title: map['title'] as String,
            body: map['body'] as String,
            username: map['username'] as String,
            usernameEn: map['username_en'] as String,
            isFinish: map['is_finish'] as bool,
            createdAt: map['createdAt'] as String,
            updateAt: DateTime.parse(map['updateAt'] as String),
          );
        }).toList();
      } else {
        debugPrint('something wrong');
      }
    } catch (e) {
      debugPrint('fetchChecklist something went wrong $e');
    }
    throw Exception('Error fetching checklists');
  }

  Future<List<FeedbackData>> fetchFeedback(
      [int startIndex = 0, postLimit]) async {
    const postLimit = 20;
    try {
      debugPrint('_fetchFeedback');
      final dio = Dio();
      final response = await dio.get(
        UrlAPIs
            .feedbackListSimple, // Use http instead of https if it's not secured
        queryParameters: {'start': '$startIndex', 'limit': '$postLimit'},
      );
      if (response.statusCode == 200) {
        debugPrint('200 status ');
        final body = response.data as List;
        return body.map((dynamic json) {
          final map = json as Map<String, dynamic>;
          // print(map);
          return FeedbackData(
            id: map['_id'] as String,
            datumId: map['id'] as int,
            content: map['content'] as String,
            tag: map['tag'] as String,
            image: map['image'] as String,
            experience: (map['experience'] as List<dynamic>?)
                    ?.map((item) => item.toString())
                    .toList() ??
                [],
            createdAt: map['createdAt'] as String,
            v: map['__v'] as int ?? 0,
          );
        }).toList();
      } else {
        debugPrint('something wrong');
      }
    } catch (e) {
      debugPrint('fetchFeedback something went wrong $e');
    }
    throw Exception('Error fetching feedback');
  }

  Future<FeedbackV2> fetchFeedbackV2([int startIndex = 0, postLimit]) async {
    const postLimit = 20;
    try {
      debugPrint('_fetchFeedbackV2');
      final dio = Dio();
      final response = await dio.get(
        UrlAPIs.feedbackListSimpleV2,
        queryParameters: {'start': '$startIndex', 'limit': '$postLimit'},
      );
      if (response.statusCode == 200) {
        debugPrint('200 status');
        final Map<String, dynamic> responseData =
            response.data as Map<String, dynamic>;
        // debugPrint("fetchFeedbackV2: $responseData");
        return FeedbackV2.fromJson(responseData);
      } else {
        debugPrint('something wrong');
      }
    } catch (e) {
      debugPrint('fetchFeedbackV2 something went wrong $e');
    }
    throw Exception('Error fetching feedbackv2');
  }

  //car feedback paging
  Future<List<FeedbackCarData>> fetchCarFeedback(
      [int startIndex = 0, postLimit]) async {
    const postLimit = 20;
    try {
      debugPrint('_fetchCarFeedback');
      final dio = Dio();
      final response = await dio.get(
        UrlAPIs
            .carFeedbackkListPaging, // Use http instead of https if it's not secured
        queryParameters: {'start': '$startIndex', 'limit': '$postLimit'},
      );
      if (response.statusCode == 200) {
        debugPrint('200 status ');
        final body = response.data as List;
        return body.map((dynamic json) {
          final map = json as Map<String, dynamic>;
          // print(map);
          return FeedbackCarData(
            id: map['_id'] as String,
            datumId: map['id'] as String,
            driver: map['driver'] as String,
            star: map['star'] as int,
            content: map['content'] as String,
            status: map['status'] as String,
            experience: (map['experience'] as List<dynamic>?)
                    ?.map((item) => item.toString())
                    .toList() ??
                [],
            createdAt: map['createdAt'] as String,
            v: map['__v'] as int ?? 0,
            trip: map["trip"] as String? ??
                "", // Assigning a default empty string if trip is null
          );
        }).toList();
      } else {
        debugPrint('something wrong');
      }
    } catch (e) {
      debugPrint('fetchCarFeedback something went wrong $e');
    }
    throw Exception('Error fetching car feedbacks ');
  }

  Future<List<User>> fetchUsers([int startIndex = 0, postLimit]) async {
    const postLimit = 20;
    try {
      debugPrint('fetchUsers');
      final dio = Dio();
      final response = await dio.get(
        UrlAPIs.userListSimple, // Use http instead of https if it's not secured
        queryParameters: {'start': '$startIndex', 'limit': '$postLimit'},
      );
      if (response.statusCode == 200) {
        debugPrint('200 status');
        final body = response.data as List;
        // print(body);
        return body.map((dynamic json) {
          final map = json as Map<String, dynamic>;
          // print(map);
          return User(
            imageUrl: map['image_url'] as String,
            password: map['password'] as String,
            id: map['_id'] as String,
            username: map['username'] as String,
            usernameEn: map['username_en'] as String,
            createdAt: DateTime.parse(map['createdAt'] as String),
            isActive: map['isActive'] as bool,
          );
        }).toList();
      } else {
        debugPrint('something wrong');
      }
    } catch (e) {
      debugPrint('fetchUsers something went wrong $e');
    }
    throw Exception('Error fetching checklists');
  }

  //fetch staff
  Future<StaffModel> fetchStaff([int startIndex = 0, postLimit]) async {
    const postLimit = 20;
    try {
      debugPrint('fetchStaffs');
      final dio = Dio();
      final response = await dio.get(
        UrlAPIs
            .staffListSimple, // Use http instead of https if it's not secured
        queryParameters: {'start': '$startIndex', 'limit': '$postLimit'},
      );
      if (response.statusCode == 200) {
        debugPrint('200 status');
        final Map<String, dynamic> responseData =
            response.data as Map<String, dynamic>;
        final data = StaffModel.fromJson(responseData);
        debugPrint("fetchStaff Res: ${data.data.length}");
        return StaffModel.fromJson(responseData);
      } else {
        debugPrint('something wrong');
      }
    } catch (e) {
      debugPrint('fetchStaff something went wrong $e');
    }
    throw Exception('Error fetching staff');
  }

  // fetch list checklist with limit
  Future deleteUser(id) async {
    final response = await dio.delete(
      UrlAPIs.userDelete(id),
      options: Options(
        receiveTimeout: receiveTimeout,
        sendTimeout: connectionTimeout,
        contentType: Headers.jsonContentType,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      ),
    );
    debugPrint(response.data);
    return (response.data);
  }

  Future updateUser(
      {String? id, username, username_en, password, image_url}) async {
    final Map<String, dynamic> body = {
      "username": username,
      "username_en": username_en,
      "password": password ?? "",
      "updateAt": DateTime.now().toIso8601String(),
      "image_url": image_url,
    };
    final response = await dio.put(
      UrlAPIs.userUpdate(id!),
      data: body,
      options: Options(
        receiveTimeout: receiveTimeout,
        sendTimeout: connectionTimeout,
        contentType: Headers.jsonContentType,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      ),
    );
    debugPrint('${response.data}');
    return (response.data);
  }

  Future updateStaff(
      {required String? id,
      required username,
      required username_en,
      required code,
      required role,
      required image_url,
      required isActive}) async {
    final Map<String, dynamic> body = {
      "username": username,
      "username_en": username_en,
      "code": code,
      "role": role,
      "image_url": image_url,
      "isActive": isActive,
    };
    final response = await dio.put(
      UrlAPIs.staffUpdate(id!),
      data: body,
      options: Options(
        receiveTimeout: receiveTimeout,
        sendTimeout: connectionTimeout,
        contentType: Headers.jsonContentType,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      ),
    );
    debugPrint('${response.data}');
    return (response.data);
  }

  Future updateUserStatus({String? id, isActive}) async {
    final Map<String, dynamic> body = {
      "isActive": isActive,
    };
    final response = await dio.put(
      UrlAPIs.userUpdateStatus(id!),
      data: body,
      options: Options(
        receiveTimeout: receiveTimeout,
        sendTimeout: connectionTimeout,
        contentType: Headers.jsonContentType,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      ),
    );
    debugPrint('${response.data}');
    return (response.data);
  }

  Future createUser({username, username_en, password, isActive}) async {
    Map<String, dynamic> body = {
      "username": username,
      "username_en": username_en,
      "password": password ?? "",
      "isActive": isActive
    };
    print(UrlAPIs.userCreate);
    final response = await dio.post(
      UrlAPIs.userCreate,
      data: body,
      options: Options(
        receiveTimeout: receiveTimeout,
        sendTimeout: connectionTimeout,
        contentType: Headers.jsonContentType,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      ),
    );
    debugPrint('${response.data}');
    return (response.data);
  }

  // Future<String?> uploadPhoto(File? file) async {
  //   try {
  //     // Create FormData object
  //     FormData formData = FormData.fromMap({
  //       'file': await MultipartFile.fromFile(file!.path,
  //           filename: file.path.split('/').last),
  //     });
  //     // Make POST request
  //     final response = await Dio().post(
  //       UrlAPIs.userUploadPhoto,
  //       data: formData,
  //       options: Options(
  //         contentType: 'multipart/form-data',
  //       ),
  //     );
  //     // Parse response and return result
  //     return response
  //         .data; // Assuming your API returns the URL of the uploaded image
  //   } catch (e) {
  //     print('Error uploading image: $e');
  //     return null;
  //   }
  // }

  Future uploadPhotoBytes(FilePickerResult? result) async {
    try {
      if (result == null || result.files.isEmpty) {
        print('No file selected');
        return null;
      }
      final file = result.files.first;
      final fileBytes = file.bytes;
      final fileName = (file.name);
      final fileFormat = fileName.split('.').last;
      // If fileBytes is null, it means the file was not picked via file picker (Flutter web)
      if (fileBytes == null) {
        print('File bytes are null. Cannot upload.');
        return null;
      }
      // Create FormData object
      FormData formData = FormData.fromMap({
        'file': MultipartFile.fromBytes(fileBytes,
            filename: '${fileName}_${DateTime.now().toString()}.$fileFormat'),
      });
      final mimeType = lookupMimeType(file.name) ?? '';
      // Make POST request
      final response = await Dio().post(
        UrlAPIs.userUploadPhoto,
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
          // contentType: mimeType,
        ),
      );
      // Check if the response status code indicates success (2xx range)
      if (response.statusCode == 200) {
        // Parse response and return result
        final imageUrl = response.data['data']['url'].toString();
        print("IMAGE URL: $imageUrl");
        print("${response.data}");
        return response
            .data; // Assuming your API returns the URL of the uploaded image
      } else {
        print('Upload failed with status code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error uploading image: $e');
      return null;
    }
  }

  Future uploadFile(List<int> file, String fileName) async {
    FormData formData = FormData.fromMap({
      "file": MultipartFile.fromBytes(
        file,
        filename: fileName.trim(),
        contentType: MediaType("image", "png, jpg, jpeg"),
      )
    });
    final response = await Dio().post(UrlAPIs.userUploadPhoto, data: formData);
    print(response.data);
    return response.data;
  }

  // fetch list checklist with limit
  Future downloadExcelFile(
    String id,
  ) async {
    final response = await dio.get(
      UrlAPIs.checklistDownloadExcel(id),
      options: Options(
        receiveTimeout: receiveTimeout,
        sendTimeout: connectionTimeout,
        contentType: Headers.jsonContentType,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      ),
    );
    debugPrint(response.data);
    return (response.data);
  }

  // fetch list checklist with limit
  Future downloadCarFeedbackExcelFile(
    String id,
  ) async {
    final response = await dio.get(
      UrlAPIs.carfeedbackDownloadExcel(id),
      options: Options(
        receiveTimeout: receiveTimeout,
        sendTimeout: connectionTimeout,
        contentType: Headers.jsonContentType,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      ),
    );
    debugPrint(response.data);
    return (response.data);
  }

  // export data ecel
  Future loginAccount(
      {required String username,
      required String password,
      Function? function}) async {
    try {
      final Map<String, dynamic> body = {
        "username": username,
        "password": password
      };
      final response = await dio.post(
        UrlAPIs.accountLogin,
        data: body,
        options: Options(
          receiveTimeout: receiveTimeout,
          sendTimeout: connectionTimeout,
          contentType: Headers.jsonContentType,
          headers: {
            'Content-type': 'application/json; charset=UTF-8',
          },
        ),
      );
      debugPrint('${response.data}');
      return (response.data);
    } catch (e) {
      if (e is DioException) {
        if (e.response?.statusCode == 401) {
          debugPrint('Unauthorized: ${e.response?.statusMessage}');
          function!();
        } else {
          debugPrint('DioException: ${e.message}');
        }
      } else {
        debugPrint('Exception: $e');
      }
      rethrow;
    }
  }
}
