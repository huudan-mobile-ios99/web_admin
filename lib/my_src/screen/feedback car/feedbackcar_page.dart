import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import '../../../src/utils/extensions/custom_extensions.dart';
import 'bloc/feedbackcar_bloc.dart';
import 'feedbackcar_list.dart';


class FeedBackCarScreen extends StatelessWidget {
  const FeedBackCarScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(context.l10n!.feedback_car),
            centerTitle: true,
            actions: const []),
        body: BlocProvider(
          create: (_) => FeedbackCarBloc(httpClient: http.Client())..add(FeedbackCarFetched()),
          child: const FeedbackCarList(),
        ));
  }
}
