import 'package:flutter/material.dart';

import '../public/color.dart';

Widget myDivider() {
  return const Padding(
    padding: EdgeInsets.symmetric(vertical:4.0),
    child: Divider(
      color: MyColor.grey_tab,
      height: .5,
    ),
  );
}
