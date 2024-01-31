// user_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:float_column_alternative/service/api_service.dart';

part 'user_state.dart';

class UserBloc extends Cubit<UserState> {
  final ApiService apiService = ApiService();

  UserBloc() : super(UserInitial());

  void fetchUsers() async {
    try {
      final users = await apiService.fetchUsers();
      emit(UserLoaded(users: users));
    } catch (e) {
      emit(const UserError(error: 'Failed to fetch users'));
    }
  }
}
