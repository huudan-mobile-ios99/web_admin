import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
   String text;
   Icon icon;
    IconTextWidget({super.key,required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    final textTheme =Theme.of(context).textTheme;
    return Text.rich(
  TextSpan(
    children: [
      WidgetSpan(child: icon),
      TextSpan(text: text,style: textTheme.titleMedium),
    ],
  ),
);
  }
}