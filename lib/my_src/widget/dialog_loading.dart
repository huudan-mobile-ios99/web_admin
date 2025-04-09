import 'package:flutter/material.dart';

import '../public/color.dart';
import '../public/padding.dart';
import 'text.dart';

showLoaderDialog(BuildContext context){
    AlertDialog alert=AlertDialog(
      backgroundColor: MyColor.white,
      content: Row(
        children: [
          const CircularProgressIndicator(),
          Container(margin: const EdgeInsets.only(left: PaddingDefault.pading08),child:text_custom(text:"Loading, Please wait for a moment" )),
        ],),
    );
    showDialog(barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }