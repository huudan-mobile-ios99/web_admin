part of 'feedbackcar_bloc.dart';

sealed class FeedbackCarEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class FeedbackCarFetched extends FeedbackCarEvent {}
