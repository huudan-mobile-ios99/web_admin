import 'package:flutter/material.dart';

import '../public/color.dart';

void showSnackBar({String? message, BuildContext? context}) {
  final snackBar = SnackBar(
    duration: const Duration(seconds: 1),
    backgroundColor: MyColor.black_text,
    content: Text(
      message!,
      
    ),
  );
  ScaffoldMessenger.of(context!).showSnackBar(snackBar);
}

