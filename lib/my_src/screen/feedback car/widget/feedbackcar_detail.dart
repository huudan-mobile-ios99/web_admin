import 'package:flutter/material.dart';

import '../../../public/format_datetime.dart';
import '../../../service_api/service_api.dart';
import '../../../widget/alert_dialog.dart';
import '../model/feedbackcar.dart';
import '../model/tripmodel.dart';
import 'text_icon.dart';

class FeedbackCarDetail extends StatefulWidget {
  final String title;
  final FeedbackCarData model;
  final int index;
  final BuildContext context;

  const FeedbackCarDetail({super.key, 
    required this.title,
    required this.context,
    required this.model,
    required this.index,
  });

  @override
  State<FeedbackCarDetail> createState() => _FeedbackCarDetailState();
}

class _FeedbackCarDetailState extends State<FeedbackCarDetail> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final service_api = ServiceAPIs();
  final formatString = StringFormat();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return myAlertDialog(
      title: "${widget.index + 1}. Detail Feedback",
      onPress: () {
        debugPrint('press confirm');
      },
      context: context,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.model.content,
            style: textTheme.titleMedium,
          ),
          const Divider(),
          FutureBuilder(
              future: service_api.findtripById(widget.model.trip),
              builder: (context, AsyncSnapshot snapshot) {
                late TripModel model = snapshot.data;
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return const Text('can not load details of trip');
                }
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconTextWidget(text:"Driver: ${model.data.driver}",icon: const Icon(Icons.info),),
                    IconTextWidget(
                        text: "Customer name: ${model.data.customerName}",
                        icon: const Icon(Icons.info)),
                    IconTextWidget(
                        text: "Customer number: ${model.data.customerNumber}",
                        icon: const Icon(Icons.info)),
                    IconTextWidget(text:"From: ${model.data.from}",icon:const Icon(Icons.info)),
                    IconTextWidget(text:"To: ${model.data.to}",icon:const Icon(Icons.info)),
                    IconTextWidget(text:"Date & Time: ${formatString.formatDateAndTime2(model.data.createdAt)}",icon: const Icon(Icons.info),),
                  ],
                );
              })
        ],
      ),
    );
  }
}
