part of 'feedbackcar_bloc.dart';

enum FeedbackCarStatus { initial, success, failure }

final class FeedbackCarState extends Equatable {
  const FeedbackCarState({
    this.status = FeedbackCarStatus.initial,
    this.posts = const <FeedbackCarData>[],
    this.hasReachedMax = false,
  });

  final FeedbackCarStatus status;
  final List<FeedbackCarData> posts;
  final bool hasReachedMax;

  FeedbackCarState copyWith({
    FeedbackCarStatus? status,
    List<FeedbackCarData>? posts,
    bool? hasReachedMax,
  }) {
    return FeedbackCarState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return 'FeedbackCarState { status: $status, hasReachedMax: $hasReachedMax, posts: ${posts.length} }';
  }

  @override
  List<Object> get props => [status, posts, hasReachedMax];
}
