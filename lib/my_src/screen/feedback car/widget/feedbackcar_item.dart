import 'package:flutter/material.dart';
import '../../../public/color.dart';
import '../../../public/date_formatter.dart';
import '../../../service_api/service_api.dart';
import '../model/feedbackcar.dart';
import 'feedbackcar_detail.dart';
import 'tag_item.dart';

class FeedbackCarItem extends StatelessWidget {
  const FeedbackCarItem({
    required this.post,
    required this.index,
    super.key,
  });
  final int index;
  final FeedbackCarData post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final dateformat = DateFormatter();
    final serviceApi = ServiceAPIs();
    final width = MediaQuery.of(context).size.width;
    const double itemWidth = 50.0;
    final widthLeft = (width - itemWidth * 2);
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
                  child: Text(
                    '${post.star} ⭐',
                    style: textTheme.titleSmall,
                  ),
                ),
                SizedBox(
                  width: widthLeft *1/10,
                  child: Text(post.status.toLowerCase(),
                      style: textTheme.titleMedium),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => FeedbackCarDetail(
                              title: "${index + 1}. Detail Feedback",
                              context: context,
                              model: post,
                              index: index,
                            ));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(right: 4.0),
                    decoration: const BoxDecoration(
                      border: Border(
                          right:
                              BorderSide(color: MyColor.grey_tab, width: .5)),
                    ),
                    width: widthLeft *(2/10),
                    child: Tooltip(
                      message: "Click to view detail ${index + 1}",
                      child: Text(
                        post.content == 'empty' || post.content.isEmpty
                            ? ""
                            : post.content,
                        style: textTheme.titleSmall,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                Container(
                    width: widthLeft *(2/10),
                    padding: const EdgeInsets.only(right: 4.0),
                    decoration: const BoxDecoration(
                      border: Border(
                          right:
                              BorderSide(color: MyColor.grey_tab, width: .5)),
                    ),
                    child: TagItem(
                      texts: (post.experience),
                    )
                    //  Text(removeSquareBrackets(post.experience.toString()),
                    //     style: textTheme.titleSmall),
                    ),
                SizedBox(
                    width: widthLeft *1.5/10,
                    child: Text(
                        post.createdAt.isNotEmpty
                            ? dateformat.FormatTime(
                                DateTime.parse(post.createdAt))
                            : "",
                        style: textTheme.titleSmall)),
                Expanded(
                  child: SizedBox(
                      width: widthLeft *1.5/10,
                      child: Text(
                          post.createdAt.isNotEmpty
                              ? dateformat.formatDateReverse(
                                  (DateTime.parse(post.createdAt)))
                              : "",
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
