import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../src/utils/extensions/custom_extensions.dart';
import '../../../../src/widgets/emoticons.dart';
import '../../user/bloc/user_bloc.dart';
import '../bloc/staff_bloc.dart';
import '../user.dart';
import '../widget/bottom_loader.dart';
import '../widget/staff_list_item.dart';

class StaffList extends StatefulWidget {
  const StaffList({super.key});
  @override
  State<StaffList> createState() => _StaffListState();
}

class _StaffListState extends State<StaffList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StaffBloc, StaffState>(
      builder: (context, state) {
        switch (state.status) {
          case StaffStatus.failure:
            return Center(
              child: Emoticons(
                  text: context.l10n!.noCategoriesFound,
                  button: TextButton(
                    onPressed: () {},
                    child: Text(context.l10n!.refresh),
                  )),
            );
          case StaffStatus.success:
            if (state.posts!.data.isEmpty) {
              return const Center(child: Text('no staff found'));
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                      return index >= state.posts!.data.length
                          ? const BottomLoader()
                          : StaffItem(
                              post: state.posts!.data[index],
                              index: index,
                            );
                    },
                    itemCount: state.hasReachedMax
                        ? state.posts!.data.length
                        : state.posts!.data.length + 1,
                    controller: _scrollController,
                  ),
                ),
              ),
            );
          case StaffStatus.initial:
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
    if (_isBottom) context.read<StaffBloc>().add(StaffFetch());
  }

  void _onRefresh() {
    context.read<StaffBloc>().add(StaffFetch());
    // ignore: invalid_use_of_visible_for_testing_member
    context.read<StaffBloc>().emit(const StaffState());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

