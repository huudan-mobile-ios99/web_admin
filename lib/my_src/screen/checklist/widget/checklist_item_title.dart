import 'package:flutter/material.dart';
import '../../../public/color.dart';
import '../../../public/date_formatter.dart';

class ChecklistItemTitle extends StatelessWidget {
  const ChecklistItemTitle(
      {
      super.key,
      });

 

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final dateformat = DateFormatter();
    final width = MediaQuery.of(context).size.width;
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
                  width: 100.0,
                  child: Text("#",
                      style: textTheme.titleMedium,),
                ),
                const Divider(),
                SizedBox(
                  width: width / 5,
                  child: Text("USERNAME EN",
                      style: textTheme.titleMedium),
                ),
                SizedBox(
                  width: width / 5,
                  child: Text("USERNAME",
                      style: textTheme.titleMedium),
                ),
                const Divider(),
                SizedBox(
                    width: width / 5,
                    child: Text("TIME",
                        style: textTheme.titleMedium)),
                const Divider(),
                Expanded(
                  child: SizedBox(
                      width: width / 5,
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
