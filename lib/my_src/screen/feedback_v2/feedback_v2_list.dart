import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../src/utils/extensions/custom_extensions.dart';
import '../../../../src/widgets/emoticons.dart';
import '../checklist/widget/bottom_loader.dart';

import 'bloc/feedback_v2_bloc.dart';
import 'widget/feedback_v2_item.dart';
import 'widget/feedback_v2_item_title.dart';

class FeedbackV2List extends StatefulWidget {
  const FeedbackV2List({super.key});

  @override
  State<FeedbackV2List> createState() => _FeedbackListState();
}

class _FeedbackListState extends State<FeedbackV2List> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    context.read<FeedbackV2Bloc>().add(FeedbackV2Fetched()); // Trigger initial fetch
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedbackV2Bloc, FeedbackV2State>(
      builder: (context, state) {
        switch (state.status) {
          case FeedbackStatusV2.initial:
            return const Center(child: CircularProgressIndicator());
          case FeedbackStatusV2.failure:
            return Center(
              child: Emoticons(
                  text: context.l10n!.noCategoriesFound,
                  button: TextButton(
                    onPressed: _onRefresh,
                    child: Text(context.l10n!.refresh),
                  )),
            );
          case FeedbackStatusV2.success:
            if (state.posts!.data.isEmpty) {
              return const Center(child: Text('No feedbacks'));
            }
          return Column(
            children: [
              const FeedbackV2ItemTitle(),
              Expanded(
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    physics: const BouncingScrollPhysics(),
                    dragDevices: {
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse,
                      PointerDeviceKind.trackpad
                    },
                  ),
                  child: RefreshIndicator(
                    onRefresh: () async {
                      _onRefresh();
                    },
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return index >= state.posts!.data.length
                            ? const BottomLoader()
                            : FeedbackV2Item(
                              index: index+1,
                              post: state.posts!.data[index],
                            ); // Update this to your actual item widget
                      },
                      itemCount: state.hasReachedMax
                          ? state.posts!.data.length
                          : state.posts!.data.length + 1,
                      controller: _scrollController,
                    ),

                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<FeedbackV2Bloc>().add(FeedbackV2Fetched());
  }

  void _onRefresh() {
    context.read<FeedbackV2Bloc>().add(FeedbackV2Fetched());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
