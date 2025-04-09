part of 'checklist_bloc.dart';

enum ChecklistStatus { initial, success, failure }

final class ChecklistState extends Equatable {
  const ChecklistState({
    this.status = ChecklistStatus.initial,
    this.posts = const <CheckList>[],
    this.hasReachedMax = false,
  });

  final ChecklistStatus status;
  final List<CheckList> posts;
  final bool hasReachedMax;

  ChecklistState copyWith({
    ChecklistStatus? status,
    List<CheckList>? posts,
    bool? hasReachedMax,
  }) {
    return ChecklistState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return 'ChecklistState { status: $status, hasReachedMax: $hasReachedMax, posts: ${posts.length} }';
  }

  @override
  List<Object> get props => [status, posts, hasReachedMax];
}
