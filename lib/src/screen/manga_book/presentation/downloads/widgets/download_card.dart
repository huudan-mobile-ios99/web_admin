import 'package:flutter/material.dart';
import '../../../../../../my_src/widget/text.dart';

Widget downloadCard(
    {required String assetPath,required BuildContext context, required Function function,required String dialogTitle,required String title,required String subtitle,required String dialogSubtitle}) {
  return ListTile(
    leading: Image.asset(assetPath,scale: 1,filterQuality: FilterQuality.low,),
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton.icon(
            icon: const Icon(Icons.download_rounded),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title:  Text(dialogTitle),
                        content: text_custom(
                            text: dialogSubtitle),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: text_custom(text: "CANCEL")),
                          TextButton(
                              onPressed: () {
                                debugPrint('confirm');
                                function();
                                Navigator.of(context).pop();
                              },
                              child: text_custom(text: "CONFIRM")),
                        ],
                      ));
            },
           label:  Text(title)),
           Text(subtitle,style: Theme.of(context).textTheme.titleSmall,textAlign: TextAlign.center)
      ],
    ),
  );
}
