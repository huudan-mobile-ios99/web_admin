String removeSquareBrackets(String listString) {
  // Remove the square brackets and trim any whitespace
  return listString.replaceAll(RegExp(r'[\[\]]'), '').trim();
}