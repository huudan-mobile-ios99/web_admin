import 'package:flutter/material.dart';
import '../../../public/color.dart';
import '../../../public/date_formatter.dart';

class FeedbackCarItemTitle extends StatelessWidget {
  const FeedbackCarItemTitle(
      {
      super.key,
      });

 

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final dateformat = DateFormatter();
    final width = MediaQuery.of(context).size.width;
    const double itemWidth = 50.0;
    final widthLeft = (width - itemWidth * 2);
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color:Theme.of(context).primaryColorLight,
          border: const Border(
            bottom: BorderSide(width: 1, color: MyColor.grey_tab),
            top: BorderSide(width: 1, color: MyColor.grey_tab),
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
                  child: Text("#",
                      style: textTheme.titleMedium,),
                ),
                SizedBox(
                  width: itemWidth,
                  child: Text("STAR",
                      style: textTheme.titleMedium,),
                ),
                SizedBox(
                  width: widthLeft*1/10,
                  child: Text("STATUS",
                      style: textTheme.titleMedium),
                ),
                SizedBox(
                  width: widthLeft*2/10,
                  child: Tooltip(
                    message: "Click to view detail",
                    child: Text("CONTENT ✱",
                        style: textTheme.titleMedium),
                  ),
                ),
                SizedBox(
                  width: widthLeft*2/10,
                  child: Text("EXPERIENCE",
                      style: textTheme.titleMedium),
                ),
                const Divider(),
                SizedBox(
                    width: widthLeft*1.5/10,
                    child: Text("TIME",
                        style: textTheme.titleMedium)),
                const Divider(),
                Expanded(
                  child: SizedBox(
                      width: widthLeft*1.5/10,
                      child: Text("DATE",
                          style: textTheme.titleMedium)),
                ),
              ],
            )
            ),
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
