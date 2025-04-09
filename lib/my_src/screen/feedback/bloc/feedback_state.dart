part of 'feedback_bloc.dart';

enum FeedbackStatus { initial, success, failure }

final class FeedbackState extends Equatable {
  const FeedbackState({
    this.status = FeedbackStatus.initial,
    this.posts = const <FeedbackData>[],
    this.hasReachedMax = false,
  });

  final FeedbackStatus status;
  final List<FeedbackData> posts;
  final bool hasReachedMax;

  FeedbackState copyWith({
    FeedbackStatus? status,
    List<FeedbackData>? posts,
    bool? hasReachedMax,
  }) {
    return FeedbackState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return 'FeedbackState { status: $status, hasReachedMax: $hasReachedMax, posts: ${posts.length} }';
  }

  @override
  List<Object> get props => [status, posts, hasReachedMax];
}
