import 'package:flutter/material.dart';

import '../../../public/color.dart';

class TagItem extends StatelessWidget {
  final List<String> texts;

  const TagItem({Key? key, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Wrap(
      runSpacing: 2.0,
      spacing: 2.0,
      children: texts.map((text) {
        return Container(
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            color:Colors.blue,
            borderRadius: BorderRadius.circular(8.0)
          ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 9.25,fontWeight: FontWeight.normal,color:MyColor.white,),
          ),
        );
      }).toList(),
    );
  }
}
