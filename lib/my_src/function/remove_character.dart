String sanitizeFileName(String fileName) {
  // Replace special characters and whitespace with an empty string
  return fileName.replaceAll(RegExp(r'[^\w\s]+'), '').trim();
}