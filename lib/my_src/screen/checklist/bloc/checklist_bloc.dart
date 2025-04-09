import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:stream_transform/stream_transform.dart';
import '../../../service_api/service_api.dart';
import '../model/checklist.dart';
part 'checklist_event.dart';
part 'checklist_state.dart';

final service_api = ServiceAPIs();
const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class ChecklistBloc extends Bloc<ChecklistEvent, ChecklistState> {
  ChecklistBloc({required this.httpClient}) : super(const ChecklistState()) {
    on<ChecklistFetched>(
      _onCheckListFetched,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  final http.Client httpClient;


  Future<void> _onCheckListFetched(
    ChecklistFetched event,
    Emitter<ChecklistState> emit,
  ) async {
    if (state.hasReachedMax) return;
    try {
      if (state.status == ChecklistStatus.initial) {
        final posts = await service_api.fetchChecklist();
        return emit(
          state.copyWith(
            status: ChecklistStatus.success,
            posts: posts,
            hasReachedMax: false,
          ),
        );
      }
      final posts = await service_api.fetchChecklist(state.posts.length);
      posts.isEmpty
          ? emit(state.copyWith(hasReachedMax: true))
          : emit(
              state.copyWith(
                status: ChecklistStatus.success,
                posts: List.of(state.posts)..addAll(posts),
                hasReachedMax: false,
              ),
            );
    } catch (_) {
      emit(state.copyWith(status: ChecklistStatus.failure));
    }
  }
}
