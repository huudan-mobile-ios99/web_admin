import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import '../../../src/utils/extensions/custom_extensions.dart';
import '../feedback/bloc/feedback_bloc.dart';
import 'feedback_list.dart';


class FeedBackScreen extends StatelessWidget {
  const FeedBackScreen({super.key, this.initialCategoryOrder});
  final int? initialCategoryOrder;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(context.l10n!.feedback),
            centerTitle: true,
            actions: const []),
        body: BlocProvider(
          create: (_) => FeedbackBloc(httpClient: http.Client())..add(FeedbackFetched()),
          child: const FeedbackList(),
        ));
  }
}
