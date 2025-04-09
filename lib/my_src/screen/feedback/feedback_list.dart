import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../src/utils/extensions/custom_extensions.dart';
import '../../../../src/widgets/emoticons.dart';
import '../checklist/widget/bottom_loader.dart';

import 'bloc/feedback_bloc.dart';
import 'widget/feedback_item.dart';
import 'widget/feedback_item_title.dart';


class FeedbackList extends StatefulWidget {
  const FeedbackList({super.key});

  @override
  State<FeedbackList> createState() => _FeedbackListState();
}

class _FeedbackListState extends State<FeedbackList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedbackBloc, FeedbackState>(
      builder: (context, state) {
        switch (state.status) {
          case FeedbackStatus.failure:
            return Center(
              child: Emoticons(
                  text: context.l10n!.noCategoriesFound,
                  button: TextButton(
                    onPressed: () {},
                    child: Text(context.l10n!.refresh),
                  )),
            );
          case FeedbackStatus.success:
            if (state.posts.isEmpty) {
              return const Center(child: Text('no feedbacks'));
            }
            return Column(
              children: [
                const FeedbackItemTitle(),
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
                        child: 
                        ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return index >= state.posts.length
                                ? const BottomLoader()
                                : FeedbackItem(post: state.posts[index], index: index,);
                          },
                          itemCount: state.hasReachedMax
                              ? state.posts.length
                              : state.posts.length + 1,
                          controller: _scrollController,
                        ),
                      )),
                ),
              ],
            );
          case FeedbackStatus.initial:
            return const Center(child: CircularProgressIndicator());
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
    if (_isBottom) context.read<FeedbackBloc>().add(FeedbackFetched());
  }
  void _onRefresh() {
     context.read<FeedbackBloc>().add(FeedbackFetched());
     context.read<FeedbackBloc>().emit(const FeedbackState());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
