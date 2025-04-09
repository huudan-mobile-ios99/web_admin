import 'package:flutter/material.dart';


Widget myAlertDialog({content, context, onPress,String? title}) {
  final textTheme = Theme.of(context).textTheme;
  return AlertDialog(
    title: Text(
      "$title",
      style: textTheme.titleLarge,
    ),
    content: content,
    actions: [
      TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("CANCEL")),
      TextButton(
          onPressed: () {
            onPress();
          },
          child: const Text("OK"))
    ],
  );
}
