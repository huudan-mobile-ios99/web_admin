import 'dart:io';

import 'package:file_picker/file_picker.dart';


pickFile() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();

  if (result != null && result.files.single.path != null) {
    PlatformFile file = result.files.first;
    print(file.name);
    print(file.bytes);
    print(file.size);
    print(file.extension);

    File file0 = File(result.files.single.path!);
    return file0;
  } else {
    /// User canceled the picker
  }
}

pickImage() async {
  final result = await FilePicker.platform
      .pickFiles(type: FileType.any, allowMultiple: false);

  if (result != null && result.files.isNotEmpty) {
    final fileBytes = result.files.first.bytes;
    final fileName = result.files.first.name;
    // upload file
    print(fileBytes!.length);
    print(fileName);
  }

  return result;
}


