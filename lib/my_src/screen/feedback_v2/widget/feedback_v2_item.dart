import 'package:flutter/material.dart';

import '../../../public/color.dart';
import '../../../public/date_formatter.dart';
import '../../../public/strings.dart';
import '../../feedback%20car/widget/tag_item.dart';
import '../model/feedbackv2.dart';

class FeedbackV2Item extends StatelessWidget {
  const FeedbackV2Item({
    required this.post,
    required this.index,
    super.key,
  });
  final int index;
  final FeedbackDataV2 post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final dateformat = DateFormatter();
     final width = MediaQuery.of(context).size.width;
    const double itemWidth = 75.0;
    final widthLeft = (width - (itemWidth * 2));
    return Material(
      child: Container(
        decoration:  BoxDecoration(
          color:post.statusName == MyString.statusBad? MyColor.grey_tab :  Colors.transparent,
          border: const Border(
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
                  child: Text("${index}",
                      style: textTheme.titleSmall,),
                ),
                SizedBox(
                  width: widthLeft*1/10,
                  child: Text("${post.statusName}",
                      style: textTheme.titleSmall,),
                ),
                SizedBox(
                  width: widthLeft*1/10,
                  child: Text("${post.customerNumber}",
                      style: textTheme.titleSmall,),
                ),
                const Divider(),
                SizedBox(
                  width: widthLeft*1/10,
                  child: Text(post.staffNameEn=='empty'  || post.staffNameEn ==  "Empty"  || post.staffNameEn ==  "EMPTY" ? "" : "${post.staffNameEn}", style: textTheme.titleSmall),
                ),
                SizedBox(
                  width: widthLeft*2.25/10,
                  child: TagItem(texts:(post.serviceGood)),
                      
                ),
                const Divider(),
                SizedBox(
                    width: widthLeft*1.75/10,
                    child: Text(post.note=='empty'  || post.note ==  "Empty"  || post.note ==  "EMPTY" ? "":"${(post.note)}",
                        style: textTheme.bodySmall)),
                const Divider(),
                Expanded(
                  child: SizedBox(
                      width: widthLeft*1.25/10,
                      child: Text("${dateformat.formatDateAndTimeFirst2(post.createdAt)}",
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
