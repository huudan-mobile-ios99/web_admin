import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:stream_transform/stream_transform.dart';
import '../../../service_api/service_api.dart';
import '../model/feedbackcar.dart';
part 'feedbackcar_event.dart';
part 'feedbackcar_state.dart';

final service_api = ServiceAPIs();
const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class FeedbackCarBloc extends Bloc<FeedbackCarEvent, FeedbackCarState> {
  FeedbackCarBloc({required this.httpClient}) : super(const FeedbackCarState()) {
    on<FeedbackCarFetched>(
      _onFeedbachCarFetched,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  final http.Client httpClient;


  Future<void> _onFeedbachCarFetched(
    FeedbackCarFetched event,
    Emitter<FeedbackCarState> emit,
  ) async {
    if (state.hasReachedMax) return;
    try {
      if (state.status == FeedbackCarStatus.initial) {
        final posts = await service_api.fetchCarFeedback();
        return emit(
          state.copyWith(
            status: FeedbackCarStatus.success,
            posts: posts,
            hasReachedMax: false,
          ),
        );
      }
      final posts = await service_api.fetchCarFeedback(state.posts.length);
      posts.isEmpty
          ? emit(state.copyWith(hasReachedMax: true))
          : emit(
              state.copyWith(
                status: FeedbackCarStatus.success,
                posts: List.of(state.posts)..addAll(posts),
                hasReachedMax: false,
              ),
            );
    } catch (_) {
      emit(state.copyWith(status: FeedbackCarStatus.failure));
    }
  }
}
