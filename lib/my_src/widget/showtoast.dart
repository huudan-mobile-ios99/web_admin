import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../public/color.dart';

void showToast({String? message, BuildContext? context}) {
  Fluttertoast.showToast(
        msg: "$message",
        webPosition: "right",
        webShowClose: true,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_RIGHT,
        timeInSecForIosWeb: 3,
        textColor: MyColor.black_text,
        fontSize: 16.0,
        webBgColor: "linear-gradient(to right,#E0E0E0,#D6D6D6)",
        backgroundColor: MyColor.grey_tab
    );
}

