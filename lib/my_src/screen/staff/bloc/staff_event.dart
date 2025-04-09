part of 'staff_bloc.dart';

sealed class StaffEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class StaffFetch extends StaffEvent {}
