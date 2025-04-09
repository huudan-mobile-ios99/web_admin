abstract class UrlAPIs {
  static String baseApi({
    String? baseUrl,
    int? port,
    bool addPort = true,
    bool appendApiToUrl = true,
  }) =>
      "${baseUrl ?? ""}"
      "${port != null && addPort ? ":$port" : ''}"
      "${appendApiToUrl ? '/api/v1' : ''}";

  // static const String baseURL_CarFeedback = "http://localhost:8080";
  static const String baseURL_CarFeedback = "http://192.168.101.58:8080";
  static const String baseURL = "http://192.168.101.58:8095";
  // static const String baseURLLocal = "http://localhost:8095";
  static const String checklist = "/checklist";
  static const String feedback = "/feedback";
  static const String feedback_v2 = "/feedback_v2";
  static const String user = "/user";
  static const String staff = "/staff";
  static const String account = "/account";
  // checklist
  static const String checklistCreate = '$baseURL$checklist/create';

  static const String checklistList = '$baseURL$checklist/list';
  static const String checklistListSimple =
      '$baseURL$checklist/list_simple/paging';
  static const String feedbackListSimple = '$baseURL$feedback/list/paging';
  static const String feedbackListSimpleV2 = '$baseURL$feedback_v2/list/paging';
  static const String checklistUpdate = '$baseURL$checklist/update';
  static const String checklistDelete = '$baseURL$checklist/delete';
  static const String checklistExport = '$baseURL$checklist/export_data';
  static const String d = '$baseURL$checklist/export_data';
  static String checklistDownloadExcel(String id) {
    return '$baseURL$checklist/download_excel/$id';
  }

  static String carfeedbackDownloadExcel(String id) {
    return '$baseURL_CarFeedback/download_excel/$id';
  }

  static String openDownloadLinkExcel(String filePath) {
    return '$baseURL$checklist/download_excel/$filePath';
  }

  //feedback car
  static const String carFeedbackkList = '$baseURL_CarFeedback/list_feedback';
  static String tripByID(tripID) {
    return '$baseURL_CarFeedback/get_trip_by_id/$tripID';
  }

  static const String carFeedbackkListPaging =
      '$baseURL_CarFeedback/list_feedback/paging';

  //export
  static const String checklistExportExcel =
      '$baseURL/export_feedback_status_all';
  static const String carfeedbackExportExcel =
      '$baseURL_CarFeedback/export_feedback_full';
  static const String feedbackuserExportExcel =
      '$baseURL$feedback/export_feedback';
  static String checklistDownloadFile(filename) {
    return '$baseURL/download_excel/$filename';
  }

  static const String userListSimple = '$baseURL$user/list/paging';
  static const String staffListSimple = '$baseURL$staff/list/paging';
  static const String userCreate = '$baseURL$user/register';
  static const String userUploadPhoto = '$baseURL/upload_photo';
  static String userDelete(String id) {
    return '$baseURL$user/delete/$id';
  }

  static String userUpdate(String id) {
    return '$baseURL$user/update/$id';
  }

  static String staffUpdate(String id) {
    return '$baseURL$staff/update/$id';
  }

  static String userUpdateStatus(String id) {
    return '$baseURL$user/update_active/$id';
  }

  static const String accountLogin = '$baseURL$account/login';
}
