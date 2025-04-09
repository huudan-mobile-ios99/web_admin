import 'package:flutter/material.dart';

Widget myTextfield({controller, String? hintText}) {
  return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ));
}
