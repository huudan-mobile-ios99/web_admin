part of 'feedback_bloc.dart';

sealed class FeedbackEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class FeedbackFetched extends FeedbackEvent {}
