part of 'checklist_bloc.dart';

sealed class ChecklistEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class ChecklistFetched extends ChecklistEvent {}
