import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../src/utils/extensions/custom_extensions.dart';
import '../../../../src/widgets/emoticons.dart';
import '../bloc/checklist_bloc.dart';
import '../widget/bottom_loader.dart';
import '../widget/checklist_item.dart';
import '../widget/checklist_item_title.dart';

class ChecklistList extends StatefulWidget {
  const ChecklistList({super.key});

  @override
  State<ChecklistList> createState() => _ChecklistListState();
}

class _ChecklistListState extends State<ChecklistList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChecklistBloc, ChecklistState>(
      builder: (context, state) {
        switch (state.status) {
          case ChecklistStatus.failure:
            return Center(
              child: Emoticons(
                  text: context.l10n!.noCategoriesFound,
                  button: TextButton(
                    onPressed: () {},
                    child: Text(context.l10n!.refresh),
                  )),
            );
          case ChecklistStatus.success:
            if (state.posts.isEmpty) {
              return const Center(child: Text('no checklists'));
            }
            return Column(
              children: [
                const ChecklistItemTitle(),
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
                                : ChecklistItem(post: state.posts[index], index: index,);
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
          case ChecklistStatus.initial:
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
    if (_isBottom) context.read<ChecklistBloc>().add(ChecklistFetched());
  }
  void _onRefresh() {
     context.read<ChecklistBloc>().add(ChecklistFetched());
     // ignore: invalid_use_of_visible_for_testing_member
     context.read<ChecklistBloc>().emit(const ChecklistState());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
