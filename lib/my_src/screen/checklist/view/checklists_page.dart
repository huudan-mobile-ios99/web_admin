import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import '../bloc/checklist_bloc.dart';
import 'checklists_list.dart';


class ChecklistPage extends StatelessWidget {
  const ChecklistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => ChecklistBloc(httpClient: http.Client())..add(ChecklistFetched()),
        child: const ChecklistList(),
      ),
    );
  }
}
