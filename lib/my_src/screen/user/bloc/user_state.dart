part of 'user_bloc.dart';

enum UserStatus { initial, success, failure }

final class UserState extends Equatable {
  const UserState({
    this.status = UserStatus.initial,
    this.posts = const <User>[],
    this.hasReachedMax = false,
  });

  final UserStatus status;
  final List<User> posts;
  final bool hasReachedMax;

  UserState copyWith({
    UserStatus? status,
    List<User>? posts,
    bool? hasReachedMax,
  }) {
    return UserState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return 'UserState { status: $status, hasReachedMax: $hasReachedMax, posts: ${posts.length} }';
  }

  @override
  List<Object> get props => [status, posts, hasReachedMax];
}
