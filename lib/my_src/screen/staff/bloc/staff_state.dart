part of 'staff_bloc.dart';

enum StaffStatus { initial, success, failure }




class StaffState extends Equatable {
  const StaffState({
    this.status = StaffStatus.initial,
    this.posts,
    this.hasReachedMax = false,
  });

  final StaffStatus status;
  final StaffModel? posts;
  final bool hasReachedMax;

  StaffState copyWith({
    StaffStatus? status,
    StaffModel? posts,
    bool? hasReachedMax,
  }) {
    return StaffState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object?> get props => [status, posts, hasReachedMax];

  @override
  String toString() {
    return 'StaffState { status: $status, hasReachedMax: $hasReachedMax, posts: ${posts?.toString()} }';
  }
}