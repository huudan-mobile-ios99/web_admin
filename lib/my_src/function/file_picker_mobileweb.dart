import 'dart:convert';
import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';

Future<void> pickImageForMobileAndWeb() async {
  final ImagePicker picker = ImagePicker();
  // This picks file for both mobile and web platforms
  final XFile? pickedFile = await picker.pickImage(
    source: ImageSource.gallery,
    imageQuality: 100,
  );

  // Defining the required size for image upload
  const int maxFileSizeInBytes = 5 * 1048; // This equals to 5MB of Size

  if (pickedFile != null) {
    final Uint8List imageByte = await pickedFile.readAsBytes(); //
    final int fileSize =
        imageByte.length; //Getting the file size of the file uploaded
    if (fileSize < maxFileSizeInBytes) {
      //show snackbar with message 'File size should be 5mb or less'
      return;
    } else {
      final String imageBase64String = base64Encode(imageByte); // Encoding the list of byte i.e imageBytes to base64 String

      // Sending the trimmed base64 string to server for validation
      // send the base64 string for validation to server.
      
    }
  } else {
    // Navigate safely to required screen
  }
}
