part of 'feedback_v2_bloc.dart';

sealed class FeedbackV2Event extends Equatable {
  @override
  List<Object> get props => [];
}

final class FeedbackV2Fetched extends FeedbackV2Event {}
