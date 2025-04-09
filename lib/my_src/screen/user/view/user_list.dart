import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../src/utils/extensions/custom_extensions.dart';
import '../../../../src/widgets/emoticons.dart';
import '../bloc/user_bloc.dart';
import '../widget/bottom_loader.dart';
import '../widget/user_list_item.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});
  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        switch (state.status) {
          case UserStatus.failure:
            return Center(
              child: Emoticons(
                  text: context.l10n!.noCategoriesFound,
                  button: TextButton(
                    onPressed: () {},
                    child: Text(context.l10n!.refresh),
                  )),
            );
          case UserStatus.success:
            if (state.posts.isEmpty) {
              return const Center(child: Text('no users'));
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
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return index >= state.posts.length
                          ? const BottomLoader()
                          : UserItem(
                              post: state.posts[index],
                              index: index,
                            );
                    },
                    itemCount: state.hasReachedMax
                        ? state.posts.length
                        : state.posts.length + 1,
                    controller: _scrollController,
                  ),
                ),
              ),
            );
          case UserStatus.initial:
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
    if (_isBottom) context.read<UserBloc>().add(UserFetched());
  }

  void _onRefresh() {
    context.read<UserBloc>().add(UserFetched());
    // ignore: invalid_use_of_visible_for_testing_member
    context.read<UserBloc>().emit(const UserState());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
