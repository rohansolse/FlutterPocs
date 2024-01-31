// user_state.dart
part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoaded extends UserState {
  final List<Map<String, dynamic>> users;

  const UserLoaded({required this.users});

  @override
  List<Object> get props => [users];
}

class UserError extends UserState {
  final String error;

  const UserError({required this.error});

  @override
  List<Object> get props => [error];
}
