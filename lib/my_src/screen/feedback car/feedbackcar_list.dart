import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../src/utils/extensions/custom_extensions.dart';
import '../../../../src/widgets/emoticons.dart';
import '../checklist/widget/bottom_loader.dart';

import 'bloc/feedbackcar_bloc.dart';
import 'widget/feedbackcar_item.dart';
import 'widget/feedbackcar_item_title.dart';


class FeedbackCarList extends StatefulWidget {
  const FeedbackCarList({super.key});

  @override
  State<FeedbackCarList> createState() => _FeedbackCarListState();
}

class _FeedbackCarListState extends State<FeedbackCarList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedbackCarBloc, FeedbackCarState>(
      builder: (context, state) {
        switch (state.status) {
          case FeedbackCarStatus.failure:
            return Center(
              child: Emoticons(
                  text: context.l10n!.noCategoriesFound,
                  button: TextButton(
                    onPressed: () {},
                    child: Text(context.l10n!.refresh),
                  )),
            );
          case FeedbackCarStatus.success:
            if (state.posts.isEmpty) {
              return const Center(child: Text('no feedbacks car '));
            }
            return Column(
              children: [
                const FeedbackCarItemTitle(),
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
                        // Text(state.posts.length.toString())
                        ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return index >= state.posts.length
                                ? const BottomLoader()
                                : FeedbackCarItem(post: state.posts[index], index: index,);
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
          case FeedbackCarStatus.initial:
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
    if (_isBottom) context.read<FeedbackCarBloc>().add(FeedbackCarFetched());
  }
  void _onRefresh() {
     context.read<FeedbackCarBloc>().add(FeedbackCarFetched());
     // ignore: invalid_use_of_visible_for_testing_member
     context.read<FeedbackCarBloc>().emit(const FeedbackCarState());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
