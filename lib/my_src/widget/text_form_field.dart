import 'package:flutter/material.dart';

import '../public/color.dart';
import '../public/strings.dart';

Widget mytextformfield({required String hint,required TextEditingController controller ,isPass}){
  return TextFormField(
                        enabled: true,
                        controller: controller,
                        keyboardType: TextInputType.text,
                        obscureText: isPass,
                        decoration: const InputDecoration(
                            fillColor: MyColor.white,
                            focusColor: MyColor.white,
                            contentPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            hintText: 'Enter username',
                            labelStyle: TextStyle(fontFamily: MyString.fontFamily),
                            hintStyle:TextStyle(fontFamily: MyString.fontFamily)),
                      );
}