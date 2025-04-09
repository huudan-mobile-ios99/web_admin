import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stream_transform/stream_transform.dart';
import '../../../service_api/service_api.dart';
import '../model/feedbackv2.dart';
part 'feedback_v2_event.dart';
part 'feedback_v2_state.dart';

final service_api = ServiceAPIs();
const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class FeedbackV2Bloc extends Bloc<FeedbackV2Event, FeedbackV2State> {
  FeedbackV2Bloc() : super(FeedbackV2State()) {
    on<FeedbackV2Fetched>(
      _onFeedbackFetched,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  // final http.Client httpClient;

  Future<void> _onFeedbackFetched(
    FeedbackV2Fetched event,
    Emitter<FeedbackV2State> emit,
  ) async {
    if (state.hasReachedMax) return;
    try {
      if (state.status == FeedbackStatusV2.initial) {
        final posts = await service_api.fetchFeedbackV2();
        debugPrint('Initial fetch: ${posts.data.length} posts fetched.');
        return emit(
          state.copyWith(
            status: FeedbackStatusV2.success,
            posts: posts,
            hasReachedMax: posts.data.isEmpty,
          ),
        );
      }

      final newPosts = await service_api.fetchFeedbackV2(state.posts?.data.length ?? 0);
      debugPrint('Subsequent fetch: ${newPosts.data.length} posts fetched.');
      
      if (newPosts.data.isEmpty) {
        emit(state.copyWith(hasReachedMax: true));
      } else {
        final updatedPosts = FeedbackV2(
          status: state.posts?.status ?? true,
          message: state.posts?.message ?? '',
          totalResult: state.posts?.totalResult ?? 0,
          data: List.of(state.posts?.data ?? [])..addAll(newPosts.data),
        );

        emit(
          state.copyWith(
            status: FeedbackStatusV2.success,
            posts: updatedPosts,
            hasReachedMax: false,
          ),
        );
      }
    } catch (error) {
      debugPrint('Fetch failed with error: $error');
      emit(state.copyWith(status: FeedbackStatusV2.success));
    }
  }
}