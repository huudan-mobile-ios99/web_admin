import 'package:flutter/material.dart';

import '../../../public/color.dart';
import '../../../public/date_formatter.dart';
import '../../feedback%20car/widget/tag_item.dart';
import '../model/feedback.dart';

class FeedbackItem extends StatelessWidget {
  const FeedbackItem({
    required this.post,
    required this.index,
    super.key,
  });
  final int index;
  final FeedbackData post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final dateformat = DateFormatter();
     final width = MediaQuery.of(context).size.width;
    const double itemWidth = 75.0;
    final widthLeft = (width - (itemWidth * 2));
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
                  width: itemWidth,
                  // color: Colors.lightBlue.shade100,
                  child: Text('${index + 1}', style: textTheme.titleSmall),
                ),
                SizedBox(
                  width: itemWidth,
                  // color: Colors.lightBlue.shade100,
                  child: Text('${post.datumId}', style: textTheme.titleSmall),
                ),
                SizedBox(
                  width: widthLeft*2/10,
                  child: Text(post.content.toUpperCase(),
                      style: textTheme.titleSmall),
                ),
                SizedBox(
                  width: widthLeft*3/10,
                  child: TagItem(texts:(post.experience)),
                ),
                SizedBox(
                    width: widthLeft*1.5/10,
                    child: Text(
                        dateformat.FormatTimeFullW(dateformat.parseDateString(post.createdAt)),
                        style: textTheme.titleSmall)),
                Expanded(
                  child: SizedBox(
                      width: widthLeft*1.5/10 ,
                      child: Text(
                          dateformat.formatDateReverse(dateformat.parseDateString(post.createdAt)),
                          style: textTheme.titleSmall)),
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
