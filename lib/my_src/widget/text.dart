import 'package:flutter/material.dart';

import '../public/strings.dart';

Widget text_custom({double? size, weight, text}) {
  return Text(
    '$text',
    style: const TextStyle(fontFamily: MyString.fontFamily,),
  );
}


