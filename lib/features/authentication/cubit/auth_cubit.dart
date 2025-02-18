import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/core/dependency_injection/dependency_injection.dart';
import 'package:spotify_clone/features/authentication/authentication.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void checkUserStatus() async {
    emit(state.copyWith(isLoading: true));
    try {
      final user = _auth.currentUser;
      final uid = await sl<AuthHiveService>().getUID();
      if (user != null) {
        emit(state.copyWith(isLoggedIn: true, isLoading: false, uid: uid));
      } else {
        emit(state.copyWith(isLoggedIn: false, isLoading: false));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
