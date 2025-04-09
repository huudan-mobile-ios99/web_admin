import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stream_transform/stream_transform.dart';
import '../../../service_api/service_api.dart';
import '../model/staff_model.dart';
part 'staff_event.dart';
part 'staff_state.dart';

final service_api = ServiceAPIs();
const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}
class StaffBloc extends Bloc<StaffEvent, StaffState> {
  StaffBloc() : super(const StaffState()) {
    on<StaffFetch>(
      _onStaffFetched,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  Future<void> _onStaffFetched(
    StaffFetch event,
    Emitter<StaffState> emit,
  ) async {
    if (state.hasReachedMax) return;
    try {
      if (state.status == StaffStatus.initial) {
        final posts = await service_api.fetchStaff();
        debugPrint('Initial fetch staff: ${posts.data.length} posts fetched.');
        debugPrint('Initial fetch: posts is ${posts.data.length}');
        return emit(
          state.copyWith(
            status: StaffStatus.success,
            posts: posts,
            hasReachedMax: false,
          ),
        );
      }

      final newPosts = await service_api.fetchStaff(state.posts?.data.length ?? 0);
      debugPrint('Subsequent fetch staff: ${newPosts.data.length} posts fetched.');
      // Example debug statements
      if (newPosts.data.isEmpty) {
        emit(state.copyWith(hasReachedMax: true));
      } else {
        final updatedPosts = StaffModel(
          status: state.posts?.status ?? true,
          message: state.posts?.message ?? '',
          totalResult: state.posts?.totalResult ?? 0,
          data: List.of(state.posts?.data ?? [])..addAll(newPosts.data),
        );
        emit(
          state.copyWith(
            status: StaffStatus.success,
            posts: updatedPosts,
            hasReachedMax: false,
          ),
        );
      }
    } catch (error) {
      debugPrint('Fetch failed with error: $error');
      emit(state.copyWith(status: StaffStatus.failure));
    }
  }
}