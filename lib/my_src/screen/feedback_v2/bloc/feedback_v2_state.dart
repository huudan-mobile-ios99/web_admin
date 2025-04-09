part of 'feedback_v2_bloc.dart';

enum FeedbackStatusV2 { initial, success, failure }

class FeedbackV2State extends Equatable {
  const FeedbackV2State({
    this.status = FeedbackStatusV2.initial,
    this.posts,
    this.hasReachedMax = false,
  });

  final FeedbackStatusV2 status;
  final FeedbackV2? posts;
  final bool hasReachedMax;

  FeedbackV2State copyWith({
    FeedbackStatusV2? status,
    FeedbackV2? posts,
    bool? hasReachedMax,
  }) {
    return FeedbackV2State(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return 'FeedbackV2State { status: $status, hasReachedMax: $hasReachedMax, posts: ${posts?.data.length ?? 0} }';
  }

  @override
  List<Object?> get props => [status, posts, hasReachedMax];
}