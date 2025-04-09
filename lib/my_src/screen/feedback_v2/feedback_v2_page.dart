import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../src/utils/extensions/custom_extensions.dart';
import 'bloc/feedback_v2_bloc.dart';
import 'feedback_v2_list.dart';
import 'package:http/http.dart' as http;

class FeedBackVScreen extends StatelessWidget {
  const FeedBackVScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(context.l10n!.feedbackV),
            centerTitle: true,
            actions: const []),
        body: BlocProvider(
          create: (_) => FeedbackV2Bloc()..add(FeedbackV2Fetched()),
          child: const FeedbackV2List(),
        ));
  }
}
