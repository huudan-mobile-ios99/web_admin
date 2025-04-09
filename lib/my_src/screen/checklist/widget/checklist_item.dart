import 'package:flutter/material.dart';
import '../../../public/color.dart';
import '../../../public/date_formatter.dart';
import '../model/checklist.dart';

class ChecklistItem extends StatelessWidget {
  const ChecklistItem({
    required this.post,
    required this.index,
    super.key,
  });
  final int index;
  final CheckList post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final dateformat = DateFormatter();
    final width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          // color:MyColor.white,
          border: Border(
            bottom: BorderSide(width: 1, color: MyColor.grey_tab),
            left: BorderSide(width: 1, color: MyColor.grey_tab),
            right: BorderSide(width: 1, color: MyColor.grey_tab),
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 100.0,
                  // color: Colors.lightBlue.shade100,
                  child: Text('${index + 1}', style: textTheme.titleMedium),
                ),
                SizedBox(
                  width: width / 5,
                  child: Text(post.usernameEn.toUpperCase(),
                      style: textTheme.titleMedium),
                ),
                SizedBox(
                  width: width / 5,
                  child: Text(post.username.toUpperCase(),
                      style: textTheme.titleMedium),
                ),
                SizedBox(
                    width: width / 5,
                    child: Text(
                        dateformat.FormatTimeFullW(dateformat.parseDateString(post.createdAt)),
                        style: textTheme.titleMedium)),
                Expanded(
                  child: SizedBox(
                      width: width / 5,
                      child: Text(
                          dateformat.formatDateReverse(dateformat.parseDateString(post.createdAt)),
                          style: textTheme.titleMedium)),
                ),
              ],
            )),
      ),
    );
  }
}

Widget rowItem({icon, String? text}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon),
      Text(
        text!,
      )
    ],
  );
}
